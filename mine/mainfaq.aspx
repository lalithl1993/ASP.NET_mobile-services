<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site2.Master" CodeBehind="mainfaq.aspx.vb" Inherits="mine.faq" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript">
    function tme(a) {
        var e = document.getElementById(a);
//        var i = document.getElementById(a + '_image');
        if (!e) return true;
        if (e.style.display == "none") {
            e.style.display = "block"
//            i.src = 'YOUR OPEN IMAGE URL';
        } else {
            e.style.display = "none"
//            i.src = 'YOUR CLOSED IMAGE URL';
        }
        return false;
    }
</script>
    <style type="text/css">
        .style1
        {
            width: 940px;
            height: 331px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div style="background-color: #FFFFFF"><img alt="FAQ" class="style1"src="images/faq_banner.jpg" /></div>

<div id="mid" align = "center" >

<h2 style="color: #FF3300; background-color: #FFFFFF;" onclick=" tme('op');">I ACCIDENTLY FORMATTED MY SD CARD & DELETED ALL THE CONTENTS. WHERE TO GET THE DEFAULT SD CARD CONTENTS?</h2>

<div id="op" style="display:none" >
<p>The SD card contents for your phone model can be downloaded from our website www.polycommobiles.com. Open the website , go to the link "GSM Mobile phones-Specs & PC sync" & then open the link SD card contents. Download the contents for desired model & copy to your SD card.</p>
</div>

<h2 style="color: #FF3300; background-color: #FFFFFF;" onclick=" tme('op1');">HOW CAN I CONNECT TO WI-FI IN MY ANDROID PHONE ?</h2>

<div id="op1" style="display:none" >
<p>Go to Settings --> Wireless Networks --> Turn ON Wi-Fi --> Go to Wi-Fi settings -->List of available wi-fi networks will be displayed --> Click on the desired network --> Enter the network key (If it is a secured network) & connect. If the network has a static IP, then Click on Menu key (Box shaped key on the left corner of key pad) go to advanced --> Select "Use Static IP" & enter the IP address, Gateway & Netmask. Refer the attached file for details</p>
</div>

<h2 style="color: #FF3300; background-color: #FFFFFF;" onclick=" tme('op2');">
HOW DO I GET REMOTE SERVICE TO FIX AN ISSUE IN MY SMART PHONE?</h2>

<div id="op2" style="display:none" >
<p>
Polycomm provides its customers a unique service where in you can get your phone''s issue fixed while sitting in the comfort of your home or office. No need to go to service centre. Just execute the Remote service application (Supported Models)  in your phone menu & call our customer care on 18001809999. Our agent will give you the six digit code which you need to enter in your phone & our agent will take the control of your phone remotely & fix the issue. Plz note that your phone needs to be connected to 3G data or Wi-Fi service in order to connect through Remote Service.</p>
</div>

<h2 style="color: #FF3300; background-color: #FFFFFF;" onclick=" tme('op3');">I AM GETTING ERROR WHILE USING THE N-DRIVE APPLICATION. HOW TO GET RID OF THE ERROR?</h2>

<div id="op3" style="display:none" >
<p>Polycomm had given N-drive navigation in models GT540 (Optimus) & P500 (Optimus One). The application is a location based application & will work with the help of GPS. The Map data used by the application is given in the SD card. If you have formatted your SD card or changed the SD card, then your application may give error. You need to download  the default contents from our website www.lgmobiles.com & copy them to your SD card. If using for the first time, you need to have data connection in your phone for the initial registration process to take place, after that it will work without data connection but you need to be in an open area so as to get clear access of GPS satellites. For any other help on this, you can call our customer care on 18001809999.</p>
</div>

<h2 style="color: #FF3300; background-color: #FFFFFF;" onclick=" tme('op4');">HOW TO USE MOBILE TV ?</h2>

<div id="op4" style="display:none" >
<p>In case of P350 (Optimus Me) model, we have given a preloaded live TV app installer. You can click on the live TV installer to downaload the live TV application for the phone. In case this application is not working, then un-install the previous version & install a new version by running the installer file.</p>
</div>

<h2 style="color: #FF3300; background-color: #FFFFFF;" onclick=" tme('op5');">WHY DO VIDEO IMAGES APPEAR BROKEN WHILE SHOOTING?
</h2>

<div id="op5" style="display:none" >
<p>Video images may appear broken because the number of frames may reduce due to lessened amount of light in a dark space.</p>
</div>

<h2 style="color: #FF3300; background-color: #FFFFFF;" onclick=" tme('op6');">
WHY IS THE IMAGE STABILIZER(ANTI-SHAKE FEATURE) DEAD OUT OF NOWHERE?</h2>

<div id="op6" style="display:none" >
<p>The image stabilizer feature is designed to work only if the illumination intensity is low, or the dose of light is small. When the intensity of illumination around you is above or below 200[Ix], it may not work. (Above/below 200[Ix] - it means too much or too little sunlight.)</p>
</div>

<h2 style="color: #FF3300; background-color: #FFFFFF;" onclick=" tme('op7');">WHY ARE THE PHOTOS SO SMALL?
</h2>

<div id="op7" style="display:none" >
<p>Check the resolution setting on the camera. 
In some camera modes, the resolution may be fixed (including picture frames or multi-shots).</p>
</div>

<h2 style="color: #FF3300; background-color: #FFFFFF;" onclick=" tme('op8');">WHY DO THE ZOOM AND SERIAL(CONTINUOUS) SHOOTING FEATURES NOT WORK?
</h2>

<div id="op8" style="display:none" >
<p>The Zoom and Serial Shooting features may be restricted depending on resolutions. You are advised to check the resolution of your model.
? Some models are not supported with such features. Refer to the video shooting part in your manual.
</p>
</div>

<h2 style="color: #FF3300; background-color: #FFFFFF;" onclick=" tme('op9');">WHAT IS THE AVERAGE LIFETIME OF A MOBILE PHONE (LITHIUM ION OR LITHIUM POLY) BATTERY?
</h2>

<div id="op9" style="display:none" >
<p>Mobile phone batteries have a limited lifetime. 
When it is observed that the battery lasts for half its original standby time, replacement is recommended (only use authorized replacement parts).</p>
</div>

<h2 style="color: #FF3300; background-color: #FFFFFF;" onclick=" tme('op10');">WHAT IS THE COST OF THE BATTERY?
</h2>

<div id="op10" style="display:none" >
<p>You can buy a battery in nearby service centers. 
You are advised to check if they have the type of battery you need beforehand.
</p>
</div>

<h2 style="color: #FF3300; background-color: #FFFFFF;" onclick=" tme('op11');">MY PHONE IS HEATING</h2>

<div id="op11" style="display:none" >
<p>During prolonged calls, video streaming or games/Internet use, the phone may become warm. This is normal and has no effect upon the life of the product or performance. 
However when the battery becomes really hot (burn your fingers on it), the phone should be checked in an Authorized Service Center.
</p>
</div>

<h2 style="color: #FF3300; background-color: #FFFFFF;" onclick=" tme('op12');">THE PHONE / BATTERY SEEMS TO BE DEAD. WHAT CAN BE DONE?
</h2>

<div id="op12" style="display:none" >
<p>Check the battery and battery charger. Try another battery charger or a replacement battery if available. 
Note: it may take up to 30 minutes before the screen indicates that charging has begun (depending on the status of the battery).
</p>
</div>

<h2 style="color: #FF3300; background-color: #FFFFFF;" onclick=" tme('op13');">I'VE LOST MY PC SYNC PASSWORD.
</h2>

<div id="op13" style="display:none" >
<p>
PC Sync Password is same as your phone password. 
-> Check your phone password and enter it to use the PC Suite IV. Unless you are sure of your phone password,  visit an LG Electronics Service Center.</p>
</div>

<h2 style="color: #FF3300; background-color: #FFFFFF;" onclick=" tme('op14');">
WHAT IS THE SENDING/RECEIVING MEMO DATA, NUMBERS AND SCHEDULER?</h2>

<div id="op14" style="display:none" >
<p>You can designate settings for your phonebook, schedule, to-do-list and memo data on your phone or  PC to be synchronized, so that you can use such data on either terminal upon turning on the phone. You can set up automatic data exchange using the Send/Receive item under the Setup Menu.</p>
</div>

</div>
</asp:Content>
