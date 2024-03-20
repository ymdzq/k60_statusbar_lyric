.class Lcom/android/settings/colorled/ColorLedRedPackageController$3;
.super Ljava/lang/Object;
.source "ColorLedRedPackageController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/colorled/ColorLedRedPackageController;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/colorled/ColorLedRedPackageController;


# direct methods
.method constructor <init>(Lcom/android/settings/colorled/ColorLedRedPackageController;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/colorled/ColorLedRedPackageController$3;->this$0:Lcom/android/settings/colorled/ColorLedRedPackageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/android/settings/colorled/ColorLedRedPackageController$3;->this$0:Lcom/android/settings/colorled/ColorLedRedPackageController;

    invoke-static {p1}, Lcom/android/settings/colorled/ColorLedRedPackageController;->-$$Nest$fgetmPreference(Lcom/android/settings/colorled/ColorLedRedPackageController;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 142
    iget-object p0, p0, Lcom/android/settings/colorled/ColorLedRedPackageController$3;->this$0:Lcom/android/settings/colorled/ColorLedRedPackageController;

    invoke-static {p0, v0}, Lcom/android/settings/colorled/ColorLedRedPackageController;->-$$Nest$msetBreathLuckyEnable(Lcom/android/settings/colorled/ColorLedRedPackageController;Z)V

    return-void
.end method
