[Ivy]
17C0BC9915D3CE56 7.5.0 #module
>Proto >Proto Collection #zClass
ts0 test_dialogProcess Big #zClass
ts0 RD #cInfo
ts0 #process
ts0 @AnnotationInP-0n ai ai #zField
ts0 @TextInP .type .type #zField
ts0 @TextInP .processKind .processKind #zField
ts0 @TextInP .xml .xml #zField
ts0 @TextInP .responsibility .responsibility #zField
ts0 @UdInit f0 '' #zField
ts0 @UdProcessEnd f1 '' #zField
ts0 @PushWFArc f2 '' #zField
ts0 @UdEvent f3 '' #zField
ts0 @UdExitEnd f4 '' #zField
ts0 @PushWFArc f5 '' #zField
>Proto ts0 ts0 test_dialogProcess #zField
ts0 f0 guid 17C0BC991631F739 #txt
ts0 f0 method start(test_for_deployment.Data) #txt
ts0 f0 inParameterDecl '<test_for_deployment.Data data> param;' #txt
ts0 f0 inParameterMapAction 'out.data=param.data;
' #txt
ts0 f0 outParameterDecl '<test_for_deployment.Data data> result;' #txt
ts0 f0 outParameterMapAction 'result.data=in.data;
' #txt
ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Data)</name>
    </language>
</elementInfo>
' #txt
ts0 f0 83 51 26 26 -35 15 #rect
ts0 f0 @|UdInitIcon #fIcon
ts0 f1 211 51 26 26 0 12 #rect
ts0 f1 @|UdProcessEndIcon #fIcon
ts0 f2 109 64 211 64 #arcP
ts0 f3 guid 17C0BC9916DF9AD6 #txt
ts0 f3 actionTable 'out=in;
' #txt
ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
ts0 f3 83 147 26 26 -16 15 #rect
ts0 f3 @|UdEventIcon #fIcon
ts0 f4 211 147 26 26 0 12 #rect
ts0 f4 @|UdExitEndIcon #fIcon
ts0 f5 109 160 211 160 #arcP
>Proto ts0 .type test_for_deployment.test_dialog.test_dialogData #txt
>Proto ts0 .processKind HTML_DIALOG #txt
>Proto ts0 -8 -8 16 16 16 26 #rect
>Proto ts0 '' #fIcon
ts0 f0 mainOut f2 tail #connect
ts0 f2 head f1 mainIn #connect
ts0 f3 mainOut f5 tail #connect
ts0 f5 head f4 mainIn #connect
