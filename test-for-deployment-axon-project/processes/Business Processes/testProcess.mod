[Ivy]
17C0BC766999D5D1 7.5.0 #module
>Proto >Proto Collection #zClass
ts0 testProcess Big #zClass
ts0 B #cInfo
ts0 #process
ts0 @AnnotationInP-0n ai ai #zField
ts0 @TextInP .type .type #zField
ts0 @TextInP .processKind .processKind #zField
ts0 @TextInP .xml .xml #zField
ts0 @TextInP .responsibility .responsibility #zField
ts0 @StartRequest f0 '' #zField
ts0 @EndTask f1 '' #zField
ts0 @UserDialog f3 '' #zField
ts0 @PushWFArc f4 '' #zField
ts0 @PushWFArc f2 '' #zField
>Proto ts0 ts0 testProcess #zField
ts0 f0 outLink start.ivp #txt
ts0 f0 inParamDecl '<> param;' #txt
ts0 f0 requestEnabled true #txt
ts0 f0 triggerEnabled false #txt
ts0 f0 callSignature start() #txt
ts0 f0 caseData businessCase.attach=true #txt
ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
ts0 f0 @C|.responsibility Everybody #txt
ts0 f0 81 49 30 30 -25 17 #rect
ts0 f0 @|StartRequestIcon #fIcon
ts0 f1 497 49 30 30 0 15 #rect
ts0 f1 @|EndIcon #fIcon
ts0 f3 dialogId test_for_deployment.test_dialog #txt
ts0 f3 startMethod start(test_for_deployment.Data) #txt
ts0 f3 requestActionDecl '<test_for_deployment.Data data> param;' #txt
ts0 f3 requestMappingAction 'param.data=in;
' #txt
ts0 f3 responseMappingAction 'out=in;
out=result.data;
' #txt
ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>test_dialog</name>
    </language>
</elementInfo>
' #txt
ts0 f3 248 42 112 44 -34 -7 #rect
ts0 f3 @|UserDialogIcon #fIcon
ts0 f4 111 64 248 64 #arcP
ts0 f2 360 64 497 64 #arcP
>Proto ts0 .type test_for_deployment.Data #txt
>Proto ts0 .processKind NORMAL #txt
>Proto ts0 0 0 32 24 18 0 #rect
>Proto ts0 @|BIcon #fIcon
ts0 f0 mainOut f4 tail #connect
ts0 f4 head f3 mainIn #connect
ts0 f3 mainOut f2 tail #connect
ts0 f2 head f1 mainIn #connect
