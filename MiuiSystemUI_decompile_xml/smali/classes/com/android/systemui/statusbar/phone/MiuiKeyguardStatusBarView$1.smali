.class public final Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPartColorComputeComplete(Ljava/util/Map;IZZZZZ)V
    .locals 0

    .line 1
    xor-int/lit8 p1, p3, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mLightLockScreenWallpaper:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateIconsAndTextColors()V

    .line 8
    return-void
    .line 11
.end method
