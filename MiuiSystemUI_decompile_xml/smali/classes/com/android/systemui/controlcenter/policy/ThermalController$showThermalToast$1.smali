.class public final Lcom/android/systemui/controlcenter/policy/ThermalController$showThermalToast$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/ThermalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/ThermalController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ThermalController$showThermalToast$1;->this$0:Lcom/android/systemui/controlcenter/policy/ThermalController;

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
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ThermalController$showThermalToast$1;->this$0:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ThermalController;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f130b9a    # @string/thermal_protection_warning 'Your device is overheated. Can't use this feature now.'

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 22
    return-void
    .line 25
.end method
