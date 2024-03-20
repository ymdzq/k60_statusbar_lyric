.class interface abstract Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;
.super Ljava/lang/Object;
.source "XAutoAdaptProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/net/XAutoAdaptProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DataProcessorCreator"
.end annotation


# virtual methods
.method public abstract getInstanceIfAbleToProcessInData(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;
.end method

.method public abstract getInstanceIfAbleToProcessOutData(Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
.end method
