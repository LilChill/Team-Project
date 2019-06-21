<?php
namespace app\index\controller;

use think\Controller;
	
class Users     extends Controller
{
	//添加管理员界面
	public function admin_add(){
		$m=M('auth_group');
		$data=$m->where("status=1")->select();
	
		$this->assign('data',$data);
		return  $this->fetch();
	}
	
	
	//添加管理员到数据库
	public function admin_add_user(){
		if($_POST){
			$data['admin_name']=$_POST['admin_name'];
			$data['admin_password']=md5($_POST['admin_password']);
			$data['phone']=$_POST['phone'];
			$m=M('admin_user');//用户数据库
			$name=$m->where("admin_name='".$data['admin_name']."'")->find();
			 
		 if(!$name){
                   

                    $res1=$m->add($data);//用户数据库
					 return  $this->success("注册成功",U('index/index/index'),2);
					
                    
            }else{
                    return $this->error("当前用户名已存在");
            }
            
		}
		return  $this->fetch();
	}
    
}
