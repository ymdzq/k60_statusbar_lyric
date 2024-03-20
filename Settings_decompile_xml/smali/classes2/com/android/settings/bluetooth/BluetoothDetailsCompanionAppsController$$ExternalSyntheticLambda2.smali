.class public final synthetic Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/preference/PreferenceCategory;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda2;->f$2:Landroidx/preference/PreferenceCategory;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda2;->f$2:Landroidx/preference/PreferenceCategory;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->$r8$lambda$NQKEowagJy9Ko4W1cgIOEhUGqnc(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;Landroid/content/DialogInterface;I)V

    return-void
.end method
