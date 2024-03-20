.class public Lcom/android/settings/search/provider/UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateReceiver.java"


# static fields
.field public static final ACTION_CLOUD_DATA_UPDATE:Ljava/lang/String; = "miui.intent.action.ACTION_CLOUD_DATA_UPDATE"

.field public static final ACTION_SEPARATE_APP_SEARCH_RESULT_UPDATE:Ljava/lang/String; = "miui.intent.action.SEPARATE_APP_SEARCH_RESULT_UPDATE"

.field private static EXECUTOR:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/provider/UpdateReceiver;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 29
    sget-object v0, Lcom/android/settings/search/provider/UpdateReceiver;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/settings/search/provider/UpdateReceiver$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/search/provider/UpdateReceiver$1;-><init>(Lcom/android/settings/search/provider/UpdateReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
