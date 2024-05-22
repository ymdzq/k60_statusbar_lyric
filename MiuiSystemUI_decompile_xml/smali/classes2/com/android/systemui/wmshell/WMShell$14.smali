.class public final Lcom/android/systemui/wmshell/WMShell$14;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# instance fields
.field public final synthetic val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$14;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onScreenTurningOff()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$14;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    .line 2
    const/4 v0, 0x7

    .line 4
    invoke-interface {p0, v0}, Lcom/android/wm/shell/onehanded/OneHanded;->stopOneHanded(I)V

    .line 5
    return-void
    .line 8
.end method
