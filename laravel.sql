/*
Navicat MySQL Data Transfer

Source Server         : drg
Source Server Version : 50554
Source Host           : 47.92.29.51:3306
Source Database       : laravel

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2017-04-18 09:23:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article` (
  `art_id` int(10) NOT NULL AUTO_INCREMENT,
  `art_title` varchar(100) DEFAULT NULL COMMENT '文章标题',
  `art_content` text,
  `art_tag` varchar(100) DEFAULT NULL COMMENT '关键词',
  `art_time` int(11) DEFAULT '0' COMMENT '发布时间',
  `art_editor` varchar(50) DEFAULT NULL COMMENT '作者',
  `art_view` int(10) DEFAULT '0' COMMENT '查看次数',
  `art_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `art_thumb` varchar(255) DEFAULT '' COMMENT '小图',
  `cate_id` int(10) DEFAULT NULL COMMENT '分类id',
  PRIMARY KEY (`art_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='//文章';

-- ----------------------------
-- Records of blog_article
-- ----------------------------
INSERT INTO `blog_article` VALUES ('26', '第一篇：php开发环境', '<h3 style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 300; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 10px; font-size: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">Window：</h3><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">1、XAMPP<br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\"/><a href=\"https://www.apachefriends.org/index.html\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; background-color: transparent; color: rgb(0, 52, 102); text-decoration-line: none;\">https://www.apachefriends.org/index.html</a></p><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">2、WampServer<br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\"/><a href=\"http://www.wampserver.com/\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; background-color: transparent; color: rgb(0, 52, 102); text-decoration-line: none;\">http://www.wampserver.com/</a></p><h3 style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 300; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 10px; font-size: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">Linux</h3><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Centos安装apache，mysql，php环境</p><p><br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/></p><pre style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; overflow: auto; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: 13px; padding: 9.5px; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; color: rgb(51, 51, 51); word-break: break-all; word-wrap: break-word; background-color: rgb(245, 245, 245); border: 1px solid rgb(204, 204, 204); border-radius: 4px;\">yum&nbsp;-y&nbsp;install&nbsp;httpd&nbsp;php&nbsp;mysql&nbsp;mysql-server&nbsp;php-mysql&nbsp;php-devel&nbsp;mod_ssl&nbsp;mod_perl&nbsp;mod_auth_mysql&nbsp;php-gd&nbsp;php-xml&nbsp;php-mbstring&nbsp;php-ldap&nbsp;php-pear&nbsp;php-xmlrpc&nbsp;mysql-connector-odbc&nbsp;mysql-devel&nbsp;libdbi-dbd-mysql</pre><p><br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/></p><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">这是系统默认版本的，如果想升级到更高，例如php5.6可以使用命令：<br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\"/>更新源：<br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\"/>CentOS/RHEL 7.x:</p><pre style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; overflow: auto; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: 13px; padding: 9.5px; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; color: rgb(51, 51, 51); word-break: break-all; word-wrap: break-word; background-color: rgb(245, 245, 245); border: 1px solid rgb(204, 204, 204); border-radius: 4px;\">rpm&nbsp;-Uvh&nbsp;https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm\r\nrpm&nbsp;-Uvh&nbsp;https://mirror.webtatic.com/yum/el7/webtatic-release.rpm</pre><p><br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/></p><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">CentOS/RHEL 6.x:</p><pre style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; overflow: auto; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: 13px; padding: 9.5px; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; color: rgb(51, 51, 51); word-break: break-all; word-wrap: break-word; background-color: rgb(245, 245, 245); border: 1px solid rgb(204, 204, 204); border-radius: 4px;\">rpm&nbsp;-Uvh&nbsp;https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm\r\nrpm&nbsp;-Uvh&nbsp;https://mirror.webtatic.com/yum/el6/latest.rpm</pre><p><br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/></p><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">删除之前安装的php</p><p><br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/></p><pre style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; overflow: auto; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: 13px; padding: 9.5px; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; color: rgb(51, 51, 51); word-break: break-all; word-wrap: break-word; background-color: rgb(245, 245, 245); border: 1px solid rgb(204, 204, 204); border-radius: 4px;\">yum&nbsp;remove&nbsp;php-common\r\nyum&nbsp;install&nbsp;php56w&nbsp;php56w-mysql&nbsp;php56w-dom&nbsp;php56w-gd&nbsp;php56w-bcmath&nbsp;php56w-mbstring&nbsp;php56w-ldap&nbsp;php56w-wddx&nbsp;php56w-xmlreader&nbsp;php56w-xmlrpc&nbsp;php56w-xmlwriter&nbsp;php56w-xsl&nbsp;php56w-xsl&nbsp;php56w-devel</pre><p><br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/></p><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">apache，mysql服务启动和关闭命令</p><p><br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/></p><pre style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; overflow: auto; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: 13px; padding: 9.5px; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; color: rgb(51, 51, 51); word-break: break-all; word-wrap: break-word; background-color: rgb(245, 245, 245); border: 1px solid rgb(204, 204, 204); border-radius: 4px;\">service&nbsp;httpd&nbsp;start\r\nservice&nbsp;httpd&nbsp;stop\r\nservice&nbsp;mysql&nbsp;start\r\nservice&nbsp;mysql&nbsp;stop</pre><p><br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/></p><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">php56-* 可用的扩展参考这里：<br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\"/><a href=\"https://webtatic.com/packages/php56/\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; background-color: transparent; color: rgb(0, 52, 102); text-decoration-line: none;\">https://webtatic.com/packages/php56/</a></p><h3 style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 300; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 10px; font-size: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">Mac</h3><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Mac OS X 内置Apache 和 PHP，使用起来非常方便。<br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\"/>终端运行：<br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\"/>&nbsp;</p><pre style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; overflow: auto; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: 13px; padding: 9.5px; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; color: rgb(51, 51, 51); word-break: break-all; word-wrap: break-word; background-color: rgb(245, 245, 245); border: 1px solid rgb(204, 204, 204); border-radius: 4px;\">sudo&nbsp;apachectl&nbsp;start</pre><p><br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/></p><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">mysql的安装<br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\"/>访问MySQL的官网，然后在页面中会看到&quot;MySQL Community Server&quot;下方有一个&quot;download&quot;点击。</p><h3 style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 300; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 10px; font-size: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">常用扩展安装</h3><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Redis</p><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">centos下面：</p><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">pecl的安装请看：<a href=\"https://blog.iw3c.com/archive/994/\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; background-color: transparent; color: rgb(0, 52, 102); text-decoration-line: none;\">https://blog.iw3c.com/archive/994/</a><br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\"/>&nbsp;</p><pre style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; overflow: auto; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: 13px; padding: 9.5px; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; color: rgb(51, 51, 51); word-break: break-all; word-wrap: break-word; background-color: rgb(245, 245, 245); border: 1px solid rgb(204, 204, 204); border-radius: 4px;\">pecl&nbsp;install&nbsp;redis\r\necho&nbsp;extension=redis.so&nbsp;&gt;&gt;&nbsp;/etc/php.ini</pre><p><br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><em style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">如果php.php不在默认位置，通过 php -i | grep &quot;php.ini&quot; 查看 php.ini的具体所在位置。</em><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"></span></p><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Window：去<a href=\"https://pecl.php.net/package/redis\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; background-color: transparent; color: rgb(0, 52, 102); text-decoration-line: none;\">https://pecl.php.net/package/redis</a>下载最新的DLL包，放后放到PHP文件下的ext目录中，或者通过集成环境更智能的添加扩展<br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\"/>&nbsp;</p><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Mongo</p><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">centos下面：</p><pre style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; overflow: auto; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: 13px; padding: 9.5px; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; color: rgb(51, 51, 51); word-break: break-all; word-wrap: break-word; background-color: rgb(245, 245, 245); border: 1px solid rgb(204, 204, 204); border-radius: 4px;\">pecl&nbsp;install&nbsp;mongo\r\necho&nbsp;extension=mongo.so&nbsp;&gt;&gt;&nbsp;/etc/php.ini</pre><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Memcached</p><p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">centos下面：</p><pre style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; overflow: auto; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: 13px; padding: 9.5px; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; color: rgb(51, 51, 51); word-break: break-all; word-wrap: break-word; background-color: rgb(245, 245, 245); border: 1px solid rgb(204, 204, 204); border-radius: 4px;\">pecl&nbsp;install&nbsp;memcached\r\necho&nbsp;extension=memcached.so&nbsp;&gt;&gt;&nbsp;/etc/php.ini</pre><p><br/></p>', null, '1491149521', '杜瑞刚', '3', '[导读] 让您快速搭建您的工作环境，测试环境，开始PHP的编程之旅。', '/uploads/20170403094630753.jpg', '10');

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(50) DEFAULT NULL,
  `cate_title` varchar(255) DEFAULT NULL,
  `cate_view` int(10) DEFAULT '0' COMMENT '浏览次数',
  `cate_order` tinyint(10) DEFAULT NULL,
  `cate_pid` int(10) DEFAULT '0' COMMENT '父级',
  `cate_keywords` varchar(255) DEFAULT NULL COMMENT '关键词',
  `cate_description` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='文章分类';

-- ----------------------------
-- Records of blog_category
-- ----------------------------
INSERT INTO `blog_category` VALUES ('10', 'PHP', 'PHP实战', '0', '1', '0', 'PHP', 'web');
INSERT INTO `blog_category` VALUES ('11', 'APP', '混合APP', '0', '2', '0', '混合APP', '混合APP开发');
INSERT INTO `blog_category` VALUES ('12', 'JS', 'JS', '0', '3', '0', 'JS', 'JS');

-- ----------------------------
-- Table structure for blog_config
-- ----------------------------
DROP TABLE IF EXISTS `blog_config`;
CREATE TABLE `blog_config` (
  `conf_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conf_title` varchar(50) DEFAULT '' COMMENT '//标题',
  `conf_name` varchar(50) DEFAULT NULL,
  `conf_content` text,
  `conf_order` int(10) DEFAULT '0',
  `conf_tips` varchar(25) DEFAULT NULL COMMENT '描述',
  `field_type` varchar(50) DEFAULT NULL COMMENT '自动类型',
  `field_value` varchar(255) DEFAULT '' COMMENT '类型值',
  PRIMARY KEY (`conf_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_config
-- ----------------------------
INSERT INTO `blog_config` VALUES ('7', '统计代码', 'web_count', 'ddd‘', '2', '网站访问情况统计', 'textarea', '1');
INSERT INTO `blog_config` VALUES ('11', '关键词', 'keywords', null, '5', '技术  PHP  精彩  网络', 'input', null);
INSERT INTO `blog_config` VALUES ('6', '网站开关', '开关', '0', '3', null, 'radio', '1|开启,0|关闭');
INSERT INTO `blog_config` VALUES ('9', '网站标题', 'web_title', null, '1', '杜瑞刚——博客', 'input', null);
INSERT INTO `blog_config` VALUES ('10', '辅助标题', 'seo_title', null, '4', '对网站名称的补充', 'input', null);
INSERT INTO `blog_config` VALUES ('12', '描述', 'description', null, '6', '专业的技术博客，phper的家', 'input', null);
INSERT INTO `blog_config` VALUES ('13', '版权信息', 'copyright', null, '7', '版权信息', 'textarea', null);

-- ----------------------------
-- Table structure for blog_links
-- ----------------------------
DROP TABLE IF EXISTS `blog_links`;
CREATE TABLE `blog_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '//名称',
  `link_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '//标题',
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '//连接',
  `link_order` int(11) NOT NULL DEFAULT '0' COMMENT '//排序',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blog_links
-- ----------------------------

-- ----------------------------
-- Table structure for blog_migrations
-- ----------------------------
DROP TABLE IF EXISTS `blog_migrations`;
CREATE TABLE `blog_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blog_migrations
-- ----------------------------
INSERT INTO `blog_migrations` VALUES ('1', '2017_03_29_234036_create_links_table', '1');

-- ----------------------------
-- Table structure for blog_navs
-- ----------------------------
DROP TABLE IF EXISTS `blog_navs`;
CREATE TABLE `blog_navs` (
  `nav_id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_name` varchar(50) DEFAULT NULL,
  `nav_alias` varchar(50) DEFAULT NULL COMMENT '//别名',
  `nav_url` varchar(255) DEFAULT NULL,
  `nav_order` int(10) DEFAULT '0',
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_navs
-- ----------------------------
INSERT INTO `blog_navs` VALUES ('4', '关于我', 'About', 'http://www.baidu.com', '2');
INSERT INTO `blog_navs` VALUES ('3', '首页', 'Protal', 'http://bk.com', '1');
INSERT INTO `blog_navs` VALUES ('5', '慢生活', 'Life', 'http://', '3');
INSERT INTO `blog_navs` VALUES ('6', '碎言碎语', 'Doing', 'http://', '4');
INSERT INTO `blog_navs` VALUES ('7', 'Doing', 'Share', 'http://', '5');
INSERT INTO `blog_navs` VALUES ('8', '学无止境', 'Learn', 'http://', '6');
INSERT INTO `blog_navs` VALUES ('9', '留言版', 'Gustbook', 'http://', '7');

-- ----------------------------
-- Table structure for blog_user
-- ----------------------------
DROP TABLE IF EXISTS `blog_user`;
CREATE TABLE `blog_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_password` varchar(255) DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of blog_user
-- ----------------------------
INSERT INTO `blog_user` VALUES ('1', 'admin', 'eyJpdiI6IkJ5eVcyR3lQTWVKZnNcL1hmYlRFdEpRPT0iLCJ2YWx1ZSI6IlJZb3c3N0FVMmhubG9abStPUzVWOGc9PSIsIm1hYyI6IjAyN2RhNDM3MWU0NDY2NGEwNzQ4ODdmYTk3MzM3NTVjMjFmZDU4NjQ4NmE0MTRmNTc1Y2E3ZmMyMGViYWMzZWIifQ==');
INSERT INTO `blog_user` VALUES ('2', 'cheng', 'cdddd');
INSERT INTO `blog_user` VALUES ('3', 'ddd', 'ddd');
INSERT INTO `blog_user` VALUES ('4', 'sss', 'ssss');
