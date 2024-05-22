.class public final Lcom/android/keyguard/AwesomeLockScreenImp/AccessibleElementRoot;
.super Lcom/miui/maml/ScreenElementRoot;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mInited:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/miui/maml/ScreenContext;

    .line 2
    new-instance v1, Lcom/miui/maml/ResourceManager;

    .line 4
    new-instance v2, Lcom/miui/maml/util/ZipResourceLoader;

    .line 6
    const-string v3, "/system/media/theme/default/virtuallockscreen"

    .line 8
    invoke-direct {v2, v3}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-direct {v1, v2}, Lcom/miui/maml/ResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;)V

    .line 13
    invoke-direct {v0, p1, v1}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    .line 16
    invoke-direct {p0, v0}, Lcom/miui/maml/ScreenElementRoot;-><init>(Lcom/miui/maml/ScreenContext;)V

    .line 19
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AccessibleElementRoot;->mInited:Z

    .line 23
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->load()Z

    .line 25
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->init()V

    .line 31
    invoke-virtual {p0, p2}, Lcom/miui/maml/ScreenElementRoot;->setOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V

    .line 34
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AccessibleElementRoot;->mInited:Z

    .line 38
    :cond_0
    return-void
    .line 40
.end method
