.class public final synthetic Lcom/android/settings/inputmethod/MiuiModifierKeysPickerDialogFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/inputmethod/MiuiModifierKeysPickerDialogFragment;

.field public final synthetic f$1:Landroid/hardware/input/InputManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/inputmethod/MiuiModifierKeysPickerDialogFragment;Landroid/hardware/input/InputManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/MiuiModifierKeysPickerDialogFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/inputmethod/MiuiModifierKeysPickerDialogFragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/MiuiModifierKeysPickerDialogFragment$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/input/InputManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/inputmethod/MiuiModifierKeysPickerDialogFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/inputmethod/MiuiModifierKeysPickerDialogFragment;

    iget-object p0, p0, Lcom/android/settings/inputmethod/MiuiModifierKeysPickerDialogFragment$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/input/InputManager;

    invoke-static {v0, p0, p1, p2}, Lcom/android/settings/inputmethod/MiuiModifierKeysPickerDialogFragment;->$r8$lambda$BAzxM4EB36T17uVCd3BOyceB5xA(Lcom/android/settings/inputmethod/MiuiModifierKeysPickerDialogFragment;Landroid/hardware/input/InputManager;Landroid/content/DialogInterface;I)V

    return-void
.end method
