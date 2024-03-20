.class public abstract Lmiui/cloud/net/XAutoAdaptProcessor;
.super Ljava/lang/Object;
.source "XAutoAdaptProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;
    }
.end annotation


# static fields
.field protected static final AVALIABLE_PROCESSOR_CREATORS:[Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    sget-object v0, Lmiui/cloud/net/XByteArrayProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    sget-object v1, Lmiui/cloud/net/XPlainTextProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    sget-object v2, Lmiui/cloud/net/XUrlencodedProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    sget-object v3, Lmiui/cloud/net/XJSONProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    filled-new-array {v0, v1, v2, v3}, [Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    move-result-object v0

    sput-object v0, Lmiui/cloud/net/XAutoAdaptProcessor;->AVALIABLE_PROCESSOR_CREATORS:[Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
