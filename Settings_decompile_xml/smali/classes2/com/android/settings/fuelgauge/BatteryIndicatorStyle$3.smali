.class Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$3;
.super Ljava/lang/Object;
.source "BatteryIndicatorStyle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->createBatteryIndicatorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$3;->this$0:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$3;->this$0:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
