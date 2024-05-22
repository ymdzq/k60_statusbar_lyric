.class public final Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$1;->this$0:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    const-string v1, "/system/media/theme/default/virtuallockscreen"

    .line 4
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$1;->this$0:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 15
    invoke-static {v0}, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->access$000(Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;)Lcom/miui/maml/ScreenElementRoot;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 21
    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$1;->this$0:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 23
    new-instance v2, Lcom/android/keyguard/AwesomeLockScreenImp/AccessibleElementRoot;

    .line 25
    invoke-static {v1}, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->access$100(Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;)Landroid/content/Context;

    .line 27
    move-result-object v3

    .line 30
    invoke-direct {v2, v3, v0}, Lcom/android/keyguard/AwesomeLockScreenImp/AccessibleElementRoot;-><init>(Landroid/content/Context;Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;)V

    .line 31
    iput-object v2, v1, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mVirtualRoot:Lcom/android/keyguard/AwesomeLockScreenImp/AccessibleElementRoot;

    .line 34
    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$1;->this$0:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 36
    iget-object v1, v1, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mVirtualRoot:Lcom/android/keyguard/AwesomeLockScreenImp/AccessibleElementRoot;

    .line 38
    iget-boolean v1, v1, Lcom/android/keyguard/AwesomeLockScreenImp/AccessibleElementRoot;->mInited:Z

    .line 40
    if-eqz v1, :cond_0

    .line 42
    const-string v1, "AwesomeLockScreenView"

    .line 44
    const-string/jumbo v2, "try to use virtual accessible nodes for 3rd lockscreen"

    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->removeAllAccessibleElements()V

    .line 52
    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$1;->this$0:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 55
    iget-object v1, v1, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mVirtualRoot:Lcom/android/keyguard/AwesomeLockScreenImp/AccessibleElementRoot;

    .line 57
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    .line 59
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->addAccessibleList(Ljava/util/List;)V

    .line 63
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$1;->this$0:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 66
    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAccessibleNodeAdded:Z

    .line 69
    :cond_0
    return-void
    .line 71
.end method
