.class public final Lcom/android/systemui/assist/PhoneStateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/assist/PhoneStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/PhoneStateMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/assist/PhoneStateMonitor$1;->this$0:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/assist/PhoneStateMonitor$1;->this$0:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 2
    invoke-static {}, Lcom/android/systemui/assist/PhoneStateMonitor;->getCurrentDefaultHome()Landroid/content/ComponentName;

    .line 4
    move-result-object p2

    .line 7
    iput-object p2, p1, Lcom/android/systemui/assist/PhoneStateMonitor;->mDefaultHome:Landroid/content/ComponentName;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/assist/PhoneStateMonitor$1;->this$0:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/assist/PhoneStateMonitor;->onDefaultHomeChanged()V

    .line 12
    return-void
    .line 15
.end method
