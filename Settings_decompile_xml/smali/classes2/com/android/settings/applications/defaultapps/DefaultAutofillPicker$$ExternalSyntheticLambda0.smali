.class public final synthetic Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    iput-object p2, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->$r8$lambda$vLfKs8vxzfa4BZh0G8lxYFSDmFA(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;Landroid/content/Intent;Landroid/content/Context;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
