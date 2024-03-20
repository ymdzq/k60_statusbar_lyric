.class Lcom/android/settings/colorled/ColorLedRedPackageController$1;
.super Ljava/lang/Object;
.source "ColorLedRedPackageController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 124
    iput-object p1, p0, Lcom/android/settings/colorled/ColorLedRedPackageController$1;->this$0:Lcom/android/settings/colorled/ColorLedRedPackageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/android/settings/colorled/ColorLedRedPackageController$1;->this$0:Lcom/android/settings/colorled/ColorLedRedPackageController;

    invoke-static {p1}, Lcom/android/settings/colorled/ColorLedRedPackageController;->-$$Nest$fgetmPreference(Lcom/android/settings/colorled/ColorLedRedPackageController;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 128
    iget-object p0, p0, Lcom/android/settings/colorled/ColorLedRedPackageController$1;->this$0:Lcom/android/settings/colorled/ColorLedRedPackageController;

    invoke-static {p0, p2}, Lcom/android/settings/colorled/ColorLedRedPackageController;->-$$Nest$msetBreathLuckyEnable(Lcom/android/settings/colorled/ColorLedRedPackageController;Z)V

    return-void
.end method
