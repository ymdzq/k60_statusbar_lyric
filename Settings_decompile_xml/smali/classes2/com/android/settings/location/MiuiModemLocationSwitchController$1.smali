.class Lcom/android/settings/location/MiuiModemLocationSwitchController$1;
.super Ljava/lang/Object;
.source "MiuiModemLocationSwitchController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/MiuiModemLocationSwitchController;->handleClick(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/MiuiModemLocationSwitchController;

.field final synthetic val$preference:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings/location/MiuiModemLocationSwitchController;Landroidx/preference/Preference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/android/settings/location/MiuiModemLocationSwitchController$1;->this$0:Lcom/android/settings/location/MiuiModemLocationSwitchController;

    iput-object p2, p0, Lcom/android/settings/location/MiuiModemLocationSwitchController$1;->val$preference:Landroidx/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/location/MiuiModemLocationSwitchController$1;->this$0:Lcom/android/settings/location/MiuiModemLocationSwitchController;

    invoke-static {v0}, Lcom/android/settings/location/MiuiModemLocationSwitchController;->-$$Nest$fgetmCurrentAction(Lcom/android/settings/location/MiuiModemLocationSwitchController;)I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/location/MiuiModemLocationSwitchController$1;->this$0:Lcom/android/settings/location/MiuiModemLocationSwitchController;

    invoke-static {v0, p2}, Lcom/android/settings/location/MiuiModemLocationSwitchController;->-$$Nest$mchangeModemPermission(Lcom/android/settings/location/MiuiModemLocationSwitchController;I)V

    .line 114
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 115
    iget-object p1, p0, Lcom/android/settings/location/MiuiModemLocationSwitchController$1;->this$0:Lcom/android/settings/location/MiuiModemLocationSwitchController;

    iget-object p0, p0, Lcom/android/settings/location/MiuiModemLocationSwitchController$1;->val$preference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Lcom/android/settings/location/MiuiModemLocationSwitchController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
