.class public final synthetic Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/MagnificationModePreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/MagnificationModePreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/MagnificationModePreferenceController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/MagnificationModePreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->onMagnificationTripleTapWarningDialogPositiveButtonClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method
