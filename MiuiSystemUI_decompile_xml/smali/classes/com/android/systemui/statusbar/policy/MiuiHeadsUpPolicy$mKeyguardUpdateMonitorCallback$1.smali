.class public final Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy$mKeyguardUpdateMonitorCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy$mKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardShowingChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy$mKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;->headsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method
