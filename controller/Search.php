<?php
namespace app\index\controller;

use think\Controller;
	
class Search     extends Controller
{
    
	public function index(){
		
		return $this->fetch();
	}
	public function search(){
		
		header("Content-type:text/html;charset=utf-8");
			 $m=M('goods');
			  
			$i=M('goods_files');
			$map['goodsname']=['like','%'.$_GET['keywords'].'%'];
			$data=$m->where($map)->order('id desc')->select();
			$array=array();
			//$map['goodsname']=['like','%'.$keywords.'%'];
			//$data=db('goods')->where($map)->order('id desc')->select();
			//$i=M('goods_files');
			 //$array=array();

			foreach($data as $k=>$v){
            $v['image']=array();//图片的名字
            $imageId=explode(',',$v['imagepath']);
           
            foreach($imageId as $vid){
                $img=$i->field('filepath')->where('id='.$vid)->find();
                 array_push($v['image'],$img);
            }
            array_push($array,$v);
        }
        
   
        @$this->assign('data',$array);
			
		
		
		return $this->fetch();
        //return  $this->fetch('search');
	}
   
    
    
}
