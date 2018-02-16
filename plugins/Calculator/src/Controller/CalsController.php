<?php
namespace Calculator\Controller;

use Cake\Filesystem\File;
use Calculator\Controller\AppController;

/**
 * Cals Controller
 *
 * @property \Calculator\Model\Table\CalsTable $Cals
 */
class CalsController extends AppController
{

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index()
    {
//        debug('aaa');die;
//        $this->viewBuilder()->layout(false);
//        $this->autoRender = false;
//        $view = $this->render('index');
//        echo $view;
//        sleep(15);
//        exit();
//        debug('aaaaaa');die;
        $this->viewBuilder()->layout(false);
        $this->viewBuilder()->theme(false);
        if($this->request->is('post')){
            $file = new File($this->request->data('file.name'));
            $content = $file->read();
            $file->close();

            $records = explode("\n", $content);
            array_shift($records);

            $fromDate = str_replace('/', '-', $this->request->data('from_date') . ' 00:00:00');
            $toDate = str_replace('/', '-', $this->request->data('to_date') . ' 23:59:59');

            $presence = [];
            foreach($records as $record){
                $pattern = '/time="([^"]+)/';
                preg_match($pattern, $record, $matches);
                if (!isset($matches[1])){
                    continue;
                }
                $time = $matches[1];
                if(($time >= $fromDate) && ($time <= $toDate)){
                    $pattern = '/id="([^"]+)/';
                    preg_match($pattern, $record, $matches);
                    $id = $matches[1];
                    $presence[$id][] = $time;
                }
            }

            foreach($presence as $key => $value){
                foreach($value as $row){
                    $tmp = explode(' ', $row);
                    $date = $tmp[0];
                    $time = $tmp[1];
                    $final[$key][$date][] = $time;
                }
            }

            foreach($final as $id => $presence){
                $fp = fopen('calculator' . DS . $id . '.csv', 'w');
                $i = 0;
                foreach($presence as $day => $time){
                    $i++;
                    while(count($time) > 0){
                        $startTime = array_shift($time);
                        $endTime = array_shift($time);
                        if(empty($endTime)){
                            $endTime = 0;
                        }
                        $csvRow = [$day, $startTime, $endTime, '=C'.$i.'-B'.$i];
                        fputcsv($fp, $csvRow);
                    }
                }
                fclose($fp);
            }
        }
    }

}
