<?php
//template was generated by Alchemist - Joomla! module generator, http://alchemist-rad.ru/ 
defined('_JEXEC') or die; 
$module = JModuleHelper::getModule( 'learn' );
JHtml::_('jquery.ui');
$param = new JRegistry($module->params);
$class  = $param['class'];
$day	= $param['day'];
$path 	= 'images/video/'.$day.'/class'.$class.'.mp4';
$user = JFactory::getUser();
$db = JFactory::getDBO();
$id = $user->id;
$query = 'SELECT * FROM #__users WHERE id = '.(int)$id;
$db->setQuery($query);
$result = $db->loadObject();
$trial = $result->trial;
$app = JFactory::getApplication();
$doc = JFactory::getDocument();
$scpath = JURI::root().'modules/mod_learn/fullscreen.js';
//$doc->addScript($scpath.'fullscreen.js');
?>
<script type="text/javascript" src="<?php echo $scpath; ?>"></script>
<?php
if(!empty($trial)) { ?>
	<div class="col-xs-12" id="vid"> 
	 <video class="col-xs-12" id="lesson" autoplay  allowfullscreen frameborder="0">
	  	<source src="<?php echo $path ?>" type="video/mp4">
			Your browser does not support the video tag.
	 </video> 
	</div>
	<button class="btn-primary col-xs-12" onclick="goFullscreen()" id="fs"> Fullscreen</button>
	<?php 
	$rem = $trial - 1;
	$update = new stdClass();
	$update->id = $id;
	$update->trial = $rem;
	$db->updateObject('#__users',$update,'id');
}  else { ?>
	<?php $app->redirect('index.php',' Your Paid session has ended'); ?>
<?php } ?>