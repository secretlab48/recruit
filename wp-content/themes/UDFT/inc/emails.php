<?php



function recruit_send_email_to_vacancy( $vacancy_id, $resume_id, $user_id ) {

    $resume = get_post( $resume_id );
    $meta = get_post_meta( $resume_id );
    $name = isset( $meta['fname'] ) && is_array( $meta['fname'] ) && strlen( $meta['fname'][0] ) ? $meta['fname'][0] : '';
    $email = isset( $meta['email'] ) && is_array( $meta['email'] ) && strlen( $meta['email'][0] ) ? $meta['email'][0] : '';
    $phone = isset( $meta['phone'] ) && is_array( $meta['phone'] ) && strlen( $meta['phone'][0] ) ? $meta['phone'][0] : '';
    $country = wp_get_post_terms( $resume_id, 'city_cat', array( 'fields' => 'all' ) );
    $country = isset( $country[0] ) && is_object( $country[0] ) ? $country[0]->name : '';
    $age = isset( $meta['birthdate'] ) && is_array( $meta['birthdate'] ) && $meta['birthdate'][0] > 0 ? $meta['birthdate'][0] : time();
    $now = new DateTime();
    $bd = new DateTime( );
    $bd->setTimestamp( $age );
    $interval = $now->diff( $bd );
    $age = $interval->format('%y' );
    $salary = isset( $meta['salary'] ) && is_array ( $meta['salary'] ) && $meta['salary'][0] > 0 ? $meta['salary'][0] : 0;
    $expirience = isset( $meta['expirience'] ) && is_array( $meta['expirience'] ) && $meta['expirience'][0] > 0 ? $meta['expirience'][0] : '';
    $lastjobs = get_post_meta( $resume_id, 'lastjobs', true );
    if ( is_array( $lastjobs ) ) {
        $lastjob = $lastjobs[0];
    }
    else {
        $lastjob = array( 'company_name' => '', 'company_branch' => '', 'status' => '', 'start_date' => time(), 'end_date' => time(), 'current_here' => 0 );
    }
    $updated = $resume->post_modified;
    $img = get_the_post_thumbnail_url( $resume_id, array( 150, 150 ) );



    $vacancy = get_post( $vacancy_id );
    $v_countrys = wp_get_post_terms( $vacancy_id, 'city_cat', array( 'fields' => 'all' ) );
    $v_country = $v_city = _x( 'Not specified', 'recruit', 'vacancy-response' );
    foreach( $v_countrys as $iv_country ) {
        if ( $iv_country->parent == 0 ) {
            $v_country = $iv_country->name;
        }
        else {
            $vcity = $iv_country->name;
        }
    }
    $v_meta = get_post_meta( $vacancy_id );
    $places = isset( $v_meta['places'] ) && is_array( $v_meta['places'] ) && strlen( $v_meta['places'][0] ) ? $v_meta['places'][0] : '';
    $salary = isset( $v_meta['salary'] ) && is_array ( $v_meta['salary'] ) && $v_meta['salary'][0] > 0 ? $v_meta['salary'][0] : 0;
    $status = isset( $v_meta['status'] ) && is_array( $v_meta['status'] ) && strlen( $v_meta['status'][0] ) ? $v_meta['status'][0] : '';
    $v_email = isset( $v_meta['email'] ) && is_array( $v_meta['email'] ) && strlen( $v_meta['email'][0] ) ? $v_meta['email'][0] : '';
    $v_img = get_the_post_thumbnail_url( $vacancy_id, array( 750, 450 ) );
    $v_img = '<img width=300 height=300 src="' . $v_img . '">';


    if ( $vacancy_id && $resume_id && $email ) {


        $ssd = get_stylesheet_directory_uri();
        $ssd = 'https://recruit.hosting1.tn-rechenzentrum1.de/wp-content/themes/UDFT';

        $out =
            '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
                 <html xmlns:v="urn:schemas-microsoft-com:vml" lang="en-US">
                     <head>
                         <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
                         <title>israel2</title>
                     </head>
                     <body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0" style="padding: 0;">
		                 <div id="wrapper" dir="ltr" style="background-color: #f7f7f7; margin: 0; padding: 70px 0 70px 0; width: 100%; -webkit-text-size-adjust: none;">';

        $out .=
            '<table width="100%" cellspacing="0" celloadding="0" bgcolor="#eeeeee">
                 <tbody>
                     <tr>
                         <td style="padding:0">
                             <table style="margin:0 auto" width="600" cellspacing="0" cellpadding="0" align="center">
                                 <tbody>
                                     <tr>
                                         <td style="padding:10px 0 10px 0;" bgcolor="#ffffff">
                                             <table width="600" align="center" cellspacing="0" cellpadding="0">
                                                 <tbody>
                                                     <tr>
                                                         <td align="center" valign="center">
                                                             <a href="' .  site_url() . '" target="_blanc"><img src="' . $ssd . '/img/logo.png" style="vertical-align:top;" width="140"></a>
                                                         </td>
                                                     </tr>
                                                 </tbody>
                                             </table>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>         
                                             <table width="600" cellspacing="0" cellpadding="0" bgcolor="transparent">
                                                 <tbody>
                                                     <tr>
                                                         <td style="border:0">
                                                             <img src="' . $ssd . '/img/resume-archive-bg.jpg"  width="600">
                                                         </td>
                                                     </tr>
                                                 </tbody>
                                             </table>
                                             <table  bgcolor="#ffffff" cellspacing="0" cellpadding="0">
                                                 <tbody>           
                                                     <tr>
                                                         <td style="padding:40px 0 0 0" cellspacing="0" cellpadding="0" align="center">
                                                             <table>
                                                                 <tr>
                                                                     <td style="color:#406a4b;font-size:30px;font-weight:400;" align="center">' . _x( 'You have answered to vacancy', 'recruit', 'vacancy-response' ) . '</td>
                                                                 </tr>
                                                                 <tr>
                                                                     <td style="color: #504f54;font-size : 16px;padding:10px 0 15px 0;" align="center">' . _x( 'Dear ', 'recruit', 'vacancy-response' ) . $name . '</td>
                                                                 </tr>
                                                                 <tr>
                                                                     <td style="color: #504f54;font-size : 16px;padding:10px 0 15px 0;" align="center">' . _x( 'It is a greate success!', 'recruit', 'vacancy-response' ). '</td>
                                                                 </tr>
                                                                 <tr>
                                                                     <td style="padding:40px 0 0 0"></td>
                                                                 </tr>
                                                                 <tr>
                                                                     <td style="padding:5px 0 5px 0;text-align:center;" align="center">' . get_the_title( $vacancy_id ) . '</td>
                                                                 </tr> 
                                                                 <tr>
                                                                     <td style="padding:5px 0 5px 0;text-align:center;" align="center">' . $v_img . '</td>
                                                                 </tr>                                                                
                                                                 <tr>
                                                                     <td style="color: #504f54;font-size : 16px;padding:5px 0 5px 0;" align="center" bgcolor="#d5d5d5">' . get_the_excerpt( $vacancy_id ) . '</td>                       
                                                                 </tr>
                                                                 <tr>
                                                                     <td style="color: #504f54;font-size : 16px;padding:5px 0 5px 0;" align="center">' . _x( 'Salary:', 'recruit', 'vacancy-response' ) . $salary . ' EUR</td>
                                                                 </tr>
                                                                 <tr>
                                                                     <td style="color: #504f54;font-size : 16px;padding:5px 0 5px 0;" align="center" bgcolor="#d5d5d5">' . _x( 'Country:', 'recruit', 'vacancy-response' ) . $v_country . '</td>                       
                                                                 </tr> 
                                                                 <tr>
                                                                     <td style="color: #504f54;font-size : 16px;padding:5px 0 5px 0;" align="center">' . _x( 'City:', 'recruit', 'vacancy-response' ) . $v_city . '</td>
                                                                 </tr>  
                                                                 <tr>
                                                                     <td style="color: #504f54;font-size : 16px;padding:5px 0 5px 0;" align="center" bgcolor="#d5d5d5">' . _x( 'Places:', 'recruit', 'vacancy-response' ) . $places . '</td>                       
                                                                 </tr>  
                                                                 <tr>
                                                                     <td style="padding:25px 0 0 0"></td>
                                                                 </tr>                                                                                                                                                                                                                                                                                                                                
                                                             </table>
                                                             <table width="100%" style="padding:0 0 40px 0">
                                                                  <tr>
                                                                     <td width="50%" style="font-size:14px;padding:0 0 20px 6%;">
                                                                         <table width="100%" align="left">
                                                                             <tbody>
                                                                                 <tr>
                                                                                    <td align="left" style="font-weight:700;padding:0 0 20px 0;">' .  _x( 'Your Contacts:', 'recruit', 'vacancy-response' ) . '</td>
                                                                                 </tr>
                                                                                 <tr>
                                                                                     <td align="left" style="padding:0 0 0 0;">' .  _x( 'Name: ', 'recruit', 'vacancy-response' ) . $name . ' </td>
                                                                                 </tr>
                                                                                 <tr>
                                                                                     <td align="left" style="padding:0 0 0 0;">' . _x( 'Email:', 'recruit', 'vacancy-response' ) . $email . ' </td>
                                                                                 </tr>
                                                                                 <tr>
                                                                                     <td align="left" style="padding:0 0 0 0;">' .  _x( 'Phone:', 'recruit', 'vacancy-response' ) . '<a target="_blanc" href="tel:' . $phone . '">' . $phone . '</a></td>
                                                                                 </tr>                                                                                                                                                                  
                                                                             </tbody>
                                                                         </table>
                                                                     </td>
                                                                     <td width="50%" style="font-size:14px;padding:0 0 20px 4%;" valign="top">
                                                                         <table width="100%" align="left">
                                                                             <tbody>
                                                                                 <tr>
                                                                                    <td align="left" style="font-weight:700;padding:0 0 20px 0;">' .  _x( 'Our contacts', 'recruit', 'vacancy-response' ) . '</td>
                                                                                 </tr>
                                                                                 <tr>
                                                                                     <td align="left" style="padding:0 0 0 0;">' .  _x( 'Phone: ', 'recruit', 'vacancy-response' ) . '<a target="_blanc" href="tel:+08914385626">089 / 14385626</a></td>
                                                                                 </tr>
                                                                                 <!--<tr>
                                                                                     <td align="left" style="padding:0 0 0 0;">Telefax: <a target="_blanc" href="tel:+4904012345679">+49 (0) 40 123 456 79</a></td>
                                                                                 </tr>-->
                                                                                 <tr>
                                                                                     <td align="left" style="padding:0 0 0 0;">E-Mail: service@hausnotruf.de</td>
                                                                                 </tr>                                                                                                                                                                  
                                                                             </tbody>
                                                                         </table>
                                                                     </td>                                                                     
                                                                 </tr>                                                             
                                                             </table>
                                                             <div style="background-color:transparent;">
                                                                 <table  width="600" cellspacing="0" cellpadding="0">
                                                                     <tbody>
                                                                         <tr>
                                                                             <td  cellspacing="0" cellpadding="0" bgcolor="transparent" background="' . $ssd . '/img/footer-img.jpg" style="position:relative;background-image:url(' . $ssd . '/img/footer-img.jpg);background-size:cover">
                                                                                 <!--[if gte mso 9]>
                                                                                   <v:rect style="width:600px;height:180px" strokecolor="none">
                                                                                      <v:fill type="tile" color="#000000" src="' . $ssd . '/img/footer-img.jpg" /></v:fill>
                                                                                   </v:rect>
                                                                                   <v:shape id="theText" style="position:absolute;width:600px;height:180px;">
                                                                                   <![endif]-->                                                                            
                                                                                 <table width="100%" cellspacing="0" cellpadding="0">
                                                                                     <tbody>
                                                                                         <tr align="center">
                                                                                             <td valign="bottom" style="padding:20px 0 20px 0;"><a href="' . home_url( '/faq-employer' ) . '" target="_blanc" style="color:#ffffff;font-size:10px;text-transform:uppercase;letter-spacing:0.88px;text-decoration:none;">' .  _x( 'Employer Tips', 'recruit', 'vacancy-response' ) . '</a></td>
                                                                                             <td valign="bottom" style="padding:20px 0 20px 0;"><a href="' . home_url( '/faq-applicant' ) . '" target="_blanc" style="color:#ffffff;font-size:10px;text-transform:uppercase;letter-spacing:0.88px;text-decoration:none;">' .  _x( 'Applicant Tips', 'recruit', 'vacancy-response' ) . '</a></td>
                                                                                             <td valign="bottom" style="padding:20px 0 20px 0;"><a href="' . home_url( '/partnerprogramm' ) . '" target="_blanc" style="color:#ffffff;font-size:10px;text-transform:uppercase;letter-spacing:0.88px;text-decoration:none;">' .  _x( 'Partnership', 'recruit', 'vacancy-response' ) . '</a></td>
                                                                                             <td valign="bottom" style="padding:20px 0 20px 0;"><a href="' . home_url( '/imressum' ) . '" target="_blanc" style="color:#ffffff;font-size:10px;text-transform:uppercase;letter-spacing:0.88px;text-decoration:none;">' .  _x( 'Impressum', 'recruit', 'vacancy-response' ) . '</a></td>
                                                                                             <td valign="bottom" style="padding:20px 0 20px 0;"><a href="' . home_url( '/nutzungsbedingungen' ) . '" target="_blanc" style="color:#ffffff;font-size:10px;text-transform:uppercase;letter-spacing:0.88px;text-decoration:none;">' .  _x( 'Nuterngutren', 'recruit', 'vacancy-response' ) . '</a></td>
                                                                                             <td valign="bottom" style="padding:20px 0 20px 0;"><a href="' . home_url( '/datenschutz' ) . '" target="_blanc" style="color:#ffffff;font-size:10px;text-transform:uppercase;letter-spacing:0.88px;text-decoration:none;">' .  _x( 'Datenshutz', 'recruit', 'vacancy-response' ) . '</a></td>
                                                                                             <td valign="bottom" style="padding:20px 0 20px 0;"><a href="' . home_url( '/kontakt' ) . '" target="_blanc" style="color:#ffffff;font-size:10px;text-transform:uppercase;letter-spacing:0.88px;text-decoration:none;">' .  _x( 'Contacts', 'recruit', 'vacancy-response' ) . '</a></td>
                                                                                         </tr>
                                                                                     </tbody>
                                                                                 </table>
                                                                                 <table width="100%"  cellspacing="0" cellpadding="0" align="center" style="margin:0 0 0 0;">
                                                                                     <tbody>
                                                                                         <tr>
                                                                                             <!--<td align="center" style="display:none;">
                                                                                                 <table>
                                                                                                     <tbody>
                                                                                                         <tr>                                                                                                      
                                                                                                 <td valign="bottom" width="40" height="40"><a href="#"><img src="' . $ssd . '/img/i_fb1.png" width="36" height="36" style="display:block;"></a></td>
                                                                                                 <td valign="bottom" width="40" height="40"><a href="#"><img src="' . $ssd . '/img/i_you1.png" width="36" height="36"  style="display:block;"></a></td>
                                                                                                 <td valign="bottom" width="40" height="40"><a href="#"><img src="' . $ssd . '/img/i_xing1.png" width="36" height="36" style="display:block;"></a></td>
                                                                                                 <td valign="bottom" width="40" height="40"><a href="#"><img src="' . $ssd . '/img/i_in1.png" width="36" height="36" style="display:block;"></a></td>
                                                                                                         </tr>
                                                                                                     </tbody>
                                                                                                 </table>        
                                                                                              </td>-->   
                                                                                         </tr>
                                                                                     </tbody>
                                                                                 </table>
                                                                                 <table width="100%" align="center" style="margin:0 0 0 0">
                                                                                     <tbody>
                                                                                        <tr>
                                                                                            <td style="font-size:10px;color:#ffffff;padding:20px 0 30px 0;" align="center">© 2019 BUNDESDEUTSCHER SENIOREN-NOTRUF e.V. Bundesverband. Alle Rechte vorbehalten. </td>
                                                                                        </tr>
                                                                                     </tbody>
                                                                                 </table>
                                                                                     <!--[if gte mso 9]>
                                                                                       </v:shape>
                                                                                    <![endif]-->
                                                                             </td>
                                                                         </tr>
                                                                      </tbody>
                                                                 </table> 
                                                             </div>                
                                                         </td>
                                                     </tr>
                                                 </tbody>
                                             </table>        
                                                 </tbody>
                                             </table>   
                                         </td>
                                     </tr>
                                 </tbody>
                             </table>    
                         </td>
                     </tr>
                 </tbody>
            </table>';


        $out .=
            '</div>
          </body>
      </html>';



        //'secretlab_test@outlook.com'
        $to = array( $email );
        $subject =  _x( 'Wistra - Vacancy Answer Report', 'recruit', 'vacancy-response' );
        $body = $out;
        $headers = array( 'Content-Type: text/html; charset=UTF-8', 'From: ' . 'hausnotruf' . ' <' . 'service@hausnotruf.de' . '>' );

        $result = wp_mail( $to, $subject, $body, $headers );
        $a = 1;

        return $result;

    }
}







function recruit_subscription_to_applicant( $user, $vacancies ) {


    $u_data = get_userdata( $user->ID );

    $v_content = '';
    foreach( $vacancies as $vacancy ) {
        $employer_id = get_post_meta( $vacancy->ID, 'employer_linked_to', true );
        $salary = get_post_meta( $vacancy->ID, 'salary', true );
        $phone = '0375557778844';
        if( $employer_id != '' ) {
            $e_data = '<a href="' . get_permalink( $employer_id ) . '">' . get_the_title( $employer_id ) . '</a>';
        }
        else {
            $e_data = _x( 'Not specified', 'recruit', 'subscription-email' );
        }
        $v_content .=
         '<tr>
              <table>
                  <tr>         
                      <td style="padding:5px 0 5px 0;text-align:center;" align="center"><a href="' . get_permalink( $vacancy ) . '">' . get_the_title( $vacancy ) . '</a><span>' . $salary . ' EUR</span></td>
                  </tr>
                  <tr>
                      <td width="50%">' . $e_data . '</td>
                      <td width="50%">' . $e_data . '</td>
                  </tr>  
              </table>      
         </tr>';


    }

    $ssd = get_stylesheet_directory_uri();
    $ssd = 'https://recruit.hosting1.tn-rechenzentrum1.de/wp-content/themes/UDFT';

    $out =
        '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
                 <html xmlns:v="urn:schemas-microsoft-com:vml" lang="en-US">
                     <head>
                         <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
                         <title>israel2</title>
                     </head>
                     <body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0" style="padding: 0;">
		                 <div id="wrapper" dir="ltr" style="background-color: #f7f7f7; margin: 0; padding: 70px 0 70px 0; width: 100%; -webkit-text-size-adjust: none;">';

    $out .=
        '<table width="100%" cellspacing="0" celloadding="0" bgcolor="#eeeeee">
                 <tbody>
                     <tr>
                         <td style="padding:0">
                             <table style="margin:0 auto" width="600" cellspacing="0" cellpadding="0" align="center">
                                 <tbody>
                                     <tr>
                                         <td style="padding:10px 0 10px 0;" bgcolor="#ffffff">
                                             <table width="600" align="center" cellspacing="0" cellpadding="0">
                                                 <tbody>
                                                     <tr>
                                                         <td align="center" valign="center">
                                                             <a href="' .  site_url() . '" target="_blanc"><img src="' . $ssd . '/img/logo.png" style="vertical-align:top;" width="140"></a>
                                                         </td>
                                                     </tr>
                                                 </tbody>
                                             </table>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>         
                                             <table width="600" cellspacing="0" cellpadding="0" bgcolor="transparent">
                                                 <tbody>
                                                     <tr>
                                                         <td style="border:0">
                                                             <img src="' . $ssd . '/img/resume-archive-bg.jpg"  width="600">
                                                         </td>
                                                     </tr>
                                                 </tbody>
                                             </table>
                                             <table  bgcolor="#ffffff" cellspacing="0" cellpadding="0">
                                                 <tbody>           
                                                     <tr>
                                                         <td style="padding:40px 0 0 0" cellspacing="0" cellpadding="0" align="center">
                                                             <table>
                                                                 <tr>
                                                                     <td style="color:#406a4b;font-size:30px;font-weight:400;" align="center">' . _x( 'You are subscribted for vacancies emails', 'recruit', 'subscription-email' ) . '</td>
                                                                 </tr>
                                                                 <tr>
                                                                     <td style="color: #504f54;font-size : 16px;padding:10px 0 15px 0;" align="center">' . _x( 'Dear ', 'recruit', 'subscription-email' ) . $u_data->user_login . '</td>
                                                                 </tr>
                                                                 <tr>
                                                                     <td style="padding:40px 0 0 0"></td>
                                                                 </tr>' .
                                                                     $v_content .
                                                                 '<tr>
                                                                     <td style="padding:25px 0 0 0"></td>
                                                                 </tr>                                                                                                                                                                                                                                                                                                                                
                                                             </table>
                                                             <table width="100%" style="padding:0 0 40px 0">
                                                                  <tr>
                                                                     <td width="50%" style="font-size:14px;padding:0 0 20px 6%;">
                                                                         <table width="100%" align="left">
                                                                             <tbody>
                                                                                 <tr>
                                                                                    <td align="left" style="font-weight:700;padding:0 0 20px 0;">' .  _x( 'Your Contacts:', 'recruit', 'subscription-email' ) . '</td>
                                                                                 </tr>
                                                                                 <tr>
                                                                                     <td align="left" style="padding:0 0 0 0;">' .  _x( 'Name: ', 'recruit', 'subscription-email' ) . $u_data->first_name . ' </td>
                                                                                 </tr>
                                                                                 <tr>
                                                                                     <td align="left" style="padding:0 0 0 0;">' . _x( 'Email:', 'recruit', 'subscription-email' ) . $user->user_email . ' </td>
                                                                                 </tr>
                                                                                 <tr>
                                                                                     <td align="left" style="padding:0 0 0 0;">' .  _x( 'Phone:', 'recruit', 'subscription-email' ) . '<a target="_blanc" href="tel:' . $phone . '">' . $phone . '</a></td>
                                                                                 </tr>                                                                                                                                                                 
                                                                             </tbody>
                                                                         </table>
                                                                     </td>
                                                                     <td width="50%" style="font-size:14px;padding:0 0 20px 4%;" valign="top">
                                                                         <table width="100%" align="left">
                                                                             <tbody>
                                                                                 <tr>
                                                                                    <td align="left" style="font-weight:700;padding:0 0 20px 0;">' .  _x( 'Our contacts', 'recruit', 'subscription-email' ) . '</td>
                                                                                 </tr>
                                                                                 <tr>
                                                                                     <td align="left" style="padding:0 0 0 0;">' .  _x( 'Phone: ', 'recruit', 'subscription-email' ) . '<a target="_blanc" href="tel:+08914385626">089 / 14385626</a></td>
                                                                                 </tr>
                                                                                 <!--<tr>
                                                                                     <td align="left" style="padding:0 0 0 0;">Telefax: <a target="_blanc" href="tel:+4904012345679">+49 (0) 40 123 456 79</a></td>
                                                                                 </tr>-->
                                                                                 <tr>
                                                                                     <td align="left" style="padding:0 0 0 0;">E-Mail: service@hausnotruf.de</td>
                                                                                 </tr>                                                                                                                                                                  
                                                                             </tbody>
                                                                         </table>
                                                                     </td>                                                                     
                                                                 </tr>                                                             
                                                             </table>
                                                             <div style="background-color:#000;">
                                                                 <table  width="600" cellspacing="0" cellpadding="0">
                                                                     <tbody>
                                                                         <tr>
                                                                             <td  cellspacing="0" cellpadding="0" bgcolor="transparent" background="' . $ssd . '/img/footer-img.jpg" style="position:relative;background-image:url(' . $ssd . '/img/footer-img.jpg);background-size:cover">
                                                                            
                                                                                 <table width="100%" cellspacing="0" cellpadding="0">
                                                                                     <tbody>
                                                                                         <tr align="center">
                                                                                             <td valign="bottom" style="padding:20px 0 20px 0;"><a href="' . home_url( '/faq-employer' ) . '" target="_blanc" style="color:#ffffff;font-size:10px;text-transform:uppercase;letter-spacing:0.88px;text-decoration:none;">' .  _x( 'Employer Tips', 'recruit', 'vacancy-response' ) . '</a></td>
                                                                                             <td valign="bottom" style="padding:20px 0 20px 0;"><a href="' . home_url( '/faq-applicant' ) . '" target="_blanc" style="color:#ffffff;font-size:10px;text-transform:uppercase;letter-spacing:0.88px;text-decoration:none;">' .  _x( 'Applicant Tips', 'recruit', 'vacancy-response' ) . '</a></td>
                                                                                             <td valign="bottom" style="padding:20px 0 20px 0;"><a href="' . home_url( '/partnerprogramm' ) . '" target="_blanc" style="color:#ffffff;font-size:10px;text-transform:uppercase;letter-spacing:0.88px;text-decoration:none;">' .  _x( 'Partnership', 'recruit', 'vacancy-response' ) . '</a></td>
                                                                                             <td valign="bottom" style="padding:20px 0 20px 0;"><a href="' . home_url( '/imressum' ) . '" target="_blanc" style="color:#ffffff;font-size:10px;text-transform:uppercase;letter-spacing:0.88px;text-decoration:none;">' .  _x( 'Impressum', 'recruit', 'vacancy-response' ) . '</a></td>
                                                                                             <td valign="bottom" style="padding:20px 0 20px 0;"><a href="' . home_url( '/nutzungsbedingungen' ) . '" target="_blanc" style="color:#ffffff;font-size:10px;text-transform:uppercase;letter-spacing:0.88px;text-decoration:none;">' .  _x( 'Nuterngutren', 'recruit', 'vacancy-response' ) . '</a></td>
                                                                                             <td valign="bottom" style="padding:20px 0 20px 0;"><a href="' . home_url( '/datenschutz' ) . '" target="_blanc" style="color:#ffffff;font-size:10px;text-transform:uppercase;letter-spacing:0.88px;text-decoration:none;">' .  _x( 'Datenshutz', 'recruit', 'vacancy-response' ) . '</a></td>
                                                                                             <td valign="bottom" style="padding:20px 0 20px 0;"><a href="' . home_url( '/kontakt' ) . '" target="_blanc" style="color:#ffffff;font-size:10px;text-transform:uppercase;letter-spacing:0.88px;text-decoration:none;">' .  _x( 'Contacts', 'recruit', 'vacancy-response' ) . '</a></td>
                                                                                         </tr>
                                                                                     </tbody>
                                                                                 </table>
                                                                                 <table width="100%"  cellspacing="0" cellpadding="0" align="center" style="margin:0 0 0 0;">
                                                                                     <tbody>
                                                                                         <tr>
                                                                                             <!--<td align="center" style="display:none;">
                                                                                                 <table>
                                                                                                     <tbody>
                                                                                                         <tr>                                                                                                      
                                                                                                 <td valign="bottom" width="40" height="40"><a href="#"><img src="' . $ssd . '/img/i_fb1.png" width="36" height="36" style="display:block;"></a></td>
                                                                                                 <td valign="bottom" width="40" height="40"><a href="#"><img src="' . $ssd . '/img/i_you1.png" width="36" height="36"  style="display:block;"></a></td>
                                                                                                 <td valign="bottom" width="40" height="40"><a href="#"><img src="' . $ssd . '/img/i_xing1.png" width="36" height="36" style="display:block;"></a></td>
                                                                                                 <td valign="bottom" width="40" height="40"><a href="#"><img src="' . $ssd . '/img/i_in1.png" width="36" height="36" style="display:block;"></a></td>
                                                                                                         </tr>
                                                                                                     </tbody>
                                                                                                 </table>        
                                                                                              </td>-->   
                                                                                         </tr>
                                                                                     </tbody>
                                                                                 </table>
                                                                                 <table width="100%" align="center" style="margin:0 0 0 0">
                                                                                     <tbody>
                                                                                        <tr>
                                                                                            <td style="font-size:10px;color:#ffffff;padding:20px 0 30px 0;" align="center">© 2019 BUNDESDEUTSCHER SENIOREN-NOTRUF e.V. Bundesverband. Alle Rechte vorbehalten. </td>
                                                                                        </tr>
                                                                                     </tbody>
                                                                                 </table>

                                                                             </td>
                                                                         </tr>
                                                                      </tbody>
                                                                 </table> 
                                                             </div>                
                                                         </td>
                                                     </tr>
                                                 </tbody>
                                             </table>        
                                                 </tbody>
                                             </table>   
                                         </td>
                                     </tr>
                                 </tbody>
                             </table>    
                         </td>
                     </tr>
                 </tbody>
            </table>';


    $out .=
        '</div>
          </body>
      </html>';



    //'secretlab_test@outlook.com'
    $to = array( $user->user_email );
    $subject =  _x( 'Wistra - Subscription', 'recruit', 'vacancy-response' );
    $body = $out;
    $headers = array( 'Content-Type: text/html; charset=UTF-8', 'From: ' . 'hausnotruf' . ' <' . 'service@hausnotruf.de' . '>' );

    $result = wp_mail( $to, $subject, $body, $headers );
    $a = 1;

    return $result;



}




/*wp_clear_scheduled_hook( 'recruit_applicants_subscription' );
wp_schedule_event( strtotime( '2019-10-09 23:30:00' ), 'daily', 'recruit_applicants_subscription' );

add_action( 'recruit_applicants_subscription', 'recruit_applicants_subscription_action' );

function recruit_applicants_subscription_action() {
    recruit_do_applicants_subscription();
}*/