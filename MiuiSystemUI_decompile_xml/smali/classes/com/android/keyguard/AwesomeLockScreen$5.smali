.class public final Lcom/android/keyguard/AwesomeLockScreen$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/AwesomeLockScreen;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AwesomeLockScreen;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/AwesomeLockScreen$5;->this$0:Lcom/android/keyguard/AwesomeLockScreen;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreen$5;->this$0:Lcom/android/keyguard/AwesomeLockScreen;

    .line 2
    sget-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 6
    const/4 v0, 0x0

    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->collapse(FZ)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "AwesomeLockScreen"

    .line 16
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 25
    :goto_0
    return-void
    .line 28
.end method
