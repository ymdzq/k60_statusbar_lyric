.class Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;
.super Ljava/lang/Object;
.source "BatteryIndicatorStyle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 44
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;->this$0:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;->this$0:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->-$$Nest$fgetmEntryValues(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;->this$0:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->-$$Nest$fgetmEntryValues(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 48
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;->this$0:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->-$$Nest$fgetmResolver(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_indicator_style"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 51
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 52
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;->this$0:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
