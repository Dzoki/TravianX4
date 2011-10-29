<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- add title later -->
    <title>TITLE HERE</title>
    <meta http-equiv="cache-control" content="max-age=0" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta http-equiv="content-type" content="text/html; charset=us-ascii" />
    <meta name="content-language" content="en" />
    <link href="gpack/main_default/lang/en/compact1.css" rel="stylesheet" type="text/css" />
    <link href="gpack/lang/en/lang.css" rel="stylesheet" type="text/css" />
    <link href="img/travian_basics.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="crypt.js?1318932101">
</script>
    <style type="text/css">
/*<![CDATA[*/
    img.c1 {filter:chroma();}
    /*]]>*/
    </style>
</head>

<body class="v35 presto login">
    <div id="wrapper">
        <img id="staticElements" src="img/x.gif" alt="" name="staticElements" />

        <div class="bodyWrapper">
            <img class="c1" src="img/x.gif" id="msfilter" alt="" name="msfilter" />

            <div id="header">
                <div id="mtop">
                    <a id="logo" href="HOMEPAGE" target="_blank" title="<?php echo $lang['index']['title']; ?>" name="logo"></a>

                    <div class="clear"></div>
                </div>
            </div>

            <div id="mid">

                <div id="side_navi">
                    <ul>
                        <li><a href="HOMEPAGE" title="<?php echo $lang['login']['menu_1']; ?>"><?php echo strtoupper($lang['login']['menu_1']); ?></a></li>

                        <li class="active"><a href="login.php" title="<?php echo $lang['login']['menu_2']; ?>"><?php echo strtoupper($lang['login']['menu_2']); ?></a></li>

                        <li><a href="register.php" title="<?php echo $lang['login']['menu_3']; ?>"><?php echo strtoupper($lang['login']['menu_3']); ?></a></li>

                        <li><a href="/forum" target="_blank" title="<?php echo $lang['login']['menu_4']; ?>"><?php echo strtoupper($lang['login']['menu_4']); ?></a></li>

                    </ul>
                </div>

                <div class="clear"></div>

                <div id="contentOuterContainer">
                    <div class="contentTitle">
                        &nbsp;
                    </div>

                    <div class="contentContainer">
                        <div id="content" class="login">
                            <h1 class="titleInHeader"><?php echo $lang['login']['menu_2']; ?></h1>

                            <h4><?php echo $lang['login']['desc_1']; ?></h4>

                            <p><?php echo $lang['login']['desc_2']; ?></p><noscript>
                            <div id="noJavaScript">
                                <?php echo $lang['login']['desc_3']; ?>
                            </div></noscript>

                            <form method="post" name="snd" action="dorf1.php" id="snd">
                                <div class="boxes boxesColor gray">
                                    <div class="boxes-tl"></div>

                                    <div class="boxes-tr"></div>

                                    <div class="boxes-tc"></div>

                                    <div class="boxes-ml"></div>

                                    <div class="boxes-mr"></div>

                                    <div class="boxes-mc"></div>

                                    <div class="boxes-bl"></div>

                                    <div class="boxes-br"></div>

                                    <div class="boxes-bc"></div>

                                    <div class="boxes-contents">
                                        <table class="transparent" cellpadding="1" cellspacing="1" id="login_form">
                                            <tbody>
                                                <tr class="top">
                                                    <th>Name :</th>

                                                    <td><input class="text" type="text" name="name" value="" /> <span class="error">&nbsp;</span></td>
                                                </tr>

                                                <tr class="btm">
                                                    <th>Password</th>

                                                    <td><input class="text" type="password" name="password" value="" maxlength="20" /> <span class="error">&nbsp;</span></td>
                                                </tr>

                                                <tr>
                                                    <th></th>

                                                    <td><input type="checkbox" id="lowRes" name="lowRes" value="1" /><label for="lowRes"><?php echo $lang['login']['desc_4']; ?></label></td>
                                                </tr>
                                            </tbody>
                                        </table>

                                        <div class="clear"></div>
                                    </div>
                                </div>

                                <p class="btn">
		                              <button type="submit" value="<?php echo $lang['login']['login']; ?>" name="s1" id="s1" onclick="document.snd.w.value=screen.width+':'+screen.height;">
                                      <div class="button-container">
                                      <div class="button-position">
                                      <div class="btl">
                                      <div class="btr">
                                      <div class="btc">
                                      </div></div></div>
                                      <div class="bml">
                                      <div class="bmr">
                                      <div class="bmc">
                                      </div></div></div>
                                      <div class="bbl">
                                      <div class="bbr">
                                      <div class="bbc">
                                      </div></div></div></div>
                                      <div class="button-contents"><?php echo $lang['login']['login']; ?>
                                      </div></div></button>		
                                      <input type="hidden" name="w" value="" />
                                      <input type="hidden" name="login" value="<?php print time(); ?>" />
                                	</p>
                            </form>

                            <div class="clear">
                                &nbsp;
                            </div>
                        </div>

                        <div class="clear"></div>
                    </div>

                    <div class="contentFooter">
                        &nbsp;
                    </div>
                </div>

                <div id="side_info">
                    <div class="news news1">
                        <a href="#" class="newsContent newsContentWithLink" onclick=" $H( { data: { cmd: 'news', id: '1' } }).dialog(); return false;">New TravianX is underway. Now in version T4. Follow us on GitHub :)</a>
                    </div>

                </div>

                <div class="clear"></div>
            </div>

            <div id="footer">
                <div id="mfoot">

                    <div class="clear"></div>
                </div>

                <p class="copyright">&copy; 2011 TravianX All rights reserved.</p>
            </div>
        </div>

        <div id="ce"></div>
    </div>
</body>
</html>
