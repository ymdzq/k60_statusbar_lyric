.class Lcom/android/settings/display/FluencyModeListPreference$1;
.super Ljava/lang/Object;
.source "FluencyModeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/FluencyModeListPreference;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/FluencyModeListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/display/FluencyModeListPreference;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/settings/display/FluencyModeListPreference$1;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-ltz p2, :cond_2

    .line 118
    iget-object p1, p0, Lcom/android/settings/display/FluencyModeListPreference$1;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-static {p1}, Lcom/android/settings/display/FluencyModeListPreference;->-$$Nest$fgetmContentArray(Lcom/android/settings/display/FluencyModeListPreference;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/FluencyModeListPreference$1;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 122
    iget-object p1, p0, Lcom/android/settings/display/FluencyModeListPreference$1;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-static {p1, p2}, Lcom/android/settings/display/FluencyModeListPreference;->-$$Nest$fputmStoredPosition(Lcom/android/settings/display/FluencyModeListPreference;I)V

    .line 123
    iget-object p1, p0, Lcom/android/settings/display/FluencyModeListPreference$1;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-static {p1}, Lcom/android/settings/display/FluencyModeListPreference;->-$$Nest$fgetmStatus(Lcom/android/settings/display/FluencyModeListPreference;)I

    move-result p1

    if-eq p2, p1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/android/settings/display/FluencyModeListPreference$1;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-static {p1, p2}, Lcom/android/settings/display/FluencyModeListPreference;->-$$Nest$mshowDialog(Lcom/android/settings/display/FluencyModeListPreference;I)V

    .line 126
    :cond_1
    iget-object p0, p0, Lcom/android/settings/display/FluencyModeListPreference$1;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method
