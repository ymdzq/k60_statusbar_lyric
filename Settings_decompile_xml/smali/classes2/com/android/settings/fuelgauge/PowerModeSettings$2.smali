.class Lcom/android/settings/fuelgauge/PowerModeSettings$2;
.super Ljava/lang/Object;
.source "PowerModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/PowerModeSettings;->createPowerModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerModeSettings;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$2;->this$0:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$2;->this$0:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
