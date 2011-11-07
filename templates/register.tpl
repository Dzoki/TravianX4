<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>TITLE HERE</title>
    <meta http-equiv="cache-control" content="max-age=0" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta http-equiv="content-type" content="text/html; charset=us-ascii" />
    <meta name="content-language" content="en" />
    <link href="gpack/main_default/lang/en/compact.css?asd423" rel="stylesheet" type="text/css" />
    <link href="gpack/main_default/lang/en/lang.css?asd423" rel="stylesheet" type="text/css" />
    <link href="img/travian_basics.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="crypt.js?1319442082">
</script>
    <style type="text/css">
/*<![CDATA[*/
    img.c1 {filter:chroma();}
    /*]]>*/
    </style>
</head>

<body class="v35 presto signup">
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
                <a id="ingameManual" href="support.php" title="Help" name="ingameManual"><img src="img/x.gif" class="question" alt="Help" /></a>

                <?php include('side_navi.tpl'); ?>

                <div class="clear"></div>

                <div id="contentOuterContainer">
                    <div class="contentTitle">
                        &nbsp;
                    </div>

                    <div class="contentContainer">
                        <div id="content" class="signup">
                            <h1 class="titleInHeader"><?php echo $lang['register']['desc_1']; ?></h1>

                            <h4 class="round"><?php echo $lang['register']['desc_5']; ?></h4>

                            <form method="post" action="register.php" id="snd">
                            <input type="hidden" name="type" value="register" />
                                <table cellpadding="1" cellspacing="1" id="sign_input" class="transparent">
                                    <tbody>
                                        <tr class="top">
                                            <th><label for="userName"><?php echo $lang['register']['desc_2']; ?>:</label></th>

                                            <td><input id="userName" class="text" type="text" name="username" value="" maxlength="15" /> <span class="error">&nbsp;</span></td>
                                        </tr>

                                        <tr>
                                            <th><label for="userEmail"><?php echo $lang['register']['desc_3']; ?>:</label></th>

                                            <td><input id="userEmail" class="text" type="text" name="email" value="" maxlength="40" /> <span class="error">&nbsp;</span></td>
                                        </tr>

                                        <tr class="btm">
                                            <th><label for="userPassword"><?php echo $lang['register']['desc_4']; ?>:</label></th>

                                            <td><input id="userPassword" class="text" type="password" name="password" value="" maxlength="20" /> <span class="error">&nbsp;</span></td>
                                        </tr>
                                    </tbody>
                                </table>

                                <h4 class="round"><?php echo $lang['register']['desc_6']; ?></h4>

                                <p class="tribeInfo"><?php echo $lang['register']['desc_7']; ?></p>

                                <div class="tribeSelect">
                                    <div class="tribe romans">
                                        <div class="selection">
                                            <input id="tribeRomans" class="radio" type="radio" name="vid" value="1" /> <label for="tribeRomans"><?php echo $lang['tribe']['romans']; ?></label>
                                        </div><label for="tribeRomans"><img src="img/x.gif" class="tribeImage romans" alt="<?php echo $lang['tribe']['romans']; ?>" title="<?php echo $lang['tribe']['romans']; ?>" /></label>
                                    </div>

                                    <div class="tribe teutons">
                                        <div class="selection">
                                            <input id="tribeTeutons" class="radio" type="radio" name="vid" value="2" /> <label for="tribeTeutons"><?php echo $lang['tribe']['teutons']; ?></label>
                                        </div><label for="tribeTeutons"><img src="img/x.gif" class="tribeImage teutons" alt="<?php echo $lang['tribe']['teutons']; ?>" title="<?php echo $lang['tribe']['teutons']; ?>" /></label>
                                    </div>

                                    <div class="tribe gauls">
                                        <div class="selection">
                                            <input id="tribeGauls" class="radio" type="radio" name="vid" value="3" /> <label for="tribeGauls"><?php echo $lang['tribe']['gauls']; ?></label>
                                        </div><label for="tribeGauls"><img src="img/x.gif" class="tribeImage gauls" alt="<?php echo $lang['tribe']['gauls']; ?>" title="<?php echo $lang['tribe']['gauls']; ?>" /></label>
                                    </div>

                                    <div class="clear"></div>
                                </div>

                                <h4 class="round"><?php echo $lang['register']['desc_8']; ?></h4>

                                <table cellpadding="1" cellspacing="1" id="sign_select" class="transparent">
                                    <tbody>
                                        <tr>
                                            <td><input class="radio" type="radio" id="positionRandom" name="kid" value="0" checked="checked" />&nbsp;<label for="positionRandom"><?php echo $lang['register']['position_1']; ?></label></td>

                                            <td><input class="radio" type="radio" id="positionNW" name="kid" value="1" />&nbsp;<label for="positionNW"><?php echo $lang['register']['position_2']; ?></label></td>

                                            <td><input class="radio" type="radio" id="positionNE" name="kid" value="2" />&nbsp;<label for="positionNE"><?php echo $lang['register']['position_3']; ?></label></td>
                                        </tr>

                                        <tr>
                                            <td class="pos2">&nbsp;</td>

                                            <td><input class="radio" type="radio" id="positionSW" name="kid" value="3" />&nbsp;<label for="positionSW"><?php echo $lang['register']['position_4']; ?></label></td>

                                            <td><input class="radio" type="radio" id="positionSE" name="kid" value="4" />&nbsp;<label for="positionSE"><?php echo $lang['register']['position_5']; ?></label></td>
                                        </tr>
                                    </tbody>
                                </table>

                                <h4 class="round"><?php echo $lang['register']['desc_9']; ?></h4>

                                <div class="checks">
                                    <input class="check" type="checkbox" id="agb" name="agb" value="1" /> <label for="agb"><?php echo $lang['register']['desc_10']; ?></label>
                                </div>

                                       <center><p class="btn">
		                              <button type="submit" value="<?php echo $lang['register']['desc_1']; ?>" name="s1" id="s1" onclick="document.snd.w.value=screen.width+':'+screen.height;">
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
                                      <div class="button-contents"><?php echo $lang['register']['desc_1']; ?>
                                      </div></div></button>		
                                      <input type="hidden" name="w" value="" />
                                      <input type="hidden" name="login" value="<?php print time(); ?>" />
                                	</p></center>
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

                <div class="clear"></div>
            </div><?php include('footer.tpl'); ?>

            <div id="anwersQuestionMark">
                <a href="http://t4.answers.travian.com/index.php?aid=21#go2answer" target="_blank" title="Travian Answers">&nbsp;</a>
            </div>
        </div>

        <div id="ce"></div>
    </div>
</body>
</html>
