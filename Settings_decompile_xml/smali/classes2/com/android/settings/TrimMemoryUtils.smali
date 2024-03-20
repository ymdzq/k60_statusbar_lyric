.class public Lcom/android/settings/TrimMemoryUtils;
.super Ljava/lang/Object;
.source "TrimMemoryUtils.java"


# instance fields
.field private final mIdleHandler:Landroid/os/MessageQueue$IdleHandler;


# direct methods
.method public static synthetic $r8$lambda$dY_kWGviFAO4KG9EMsktrWJL_Bk()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/settings/TrimMemoryUtils;->lambda$new$0()Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/android/settings/TrimMemoryUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/TrimMemoryUtils$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrimMemoryUtils;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    return-void
.end method

.method private static synthetic lambda$new$0()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addIdleHandler()V
    .locals 0

    .line 0
    return-void
.end method

.method public removeIdleHandler()V
    .locals 0

    .line 0
    return-void
.end method
