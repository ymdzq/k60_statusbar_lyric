.class Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "ListPreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment$1;->this$0:Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment$1;->this$0:Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;

    invoke-static {v0, p2}, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;->-$$Nest$fputmClickedDialogEntryIndex(Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;I)V

    .line 93
    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment$1;->this$0:Lcom/android/settingslib/miuisettings/preference/ListPreferenceDialogFragment;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/PreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 95
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
