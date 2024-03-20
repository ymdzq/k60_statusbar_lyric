.class Lcom/android/settings/applications/MiuiClearDefaultsPreference$3;
.super Ljava/lang/Object;
.source "MiuiClearDefaultsPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/MiuiClearDefaultsPreference;->updateUI(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

.field final synthetic val$autoLaunchEnabled:Z

.field final synthetic val$hasBindAppWidgetPermission:Z


# direct methods
.method constructor <init>(Lcom/android/settings/applications/MiuiClearDefaultsPreference;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$3;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    iput-boolean p2, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$3;->val$hasBindAppWidgetPermission:Z

    iput-boolean p3, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$3;->val$autoLaunchEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 160
    iget-boolean v0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$3;->val$hasBindAppWidgetPermission:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$3;->val$autoLaunchEnabled:Z

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$3;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    sget v4, Lcom/android/settings/R$string;->auto_launch_label_generic:I

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$3;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    sget v4, Lcom/android/settings/R$string;->auto_launch_label:I

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(I)V

    .line 168
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$3;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->installed_app_details_bullet_offset:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 172
    iget-boolean v5, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$3;->val$autoLaunchEnabled:Z

    const-string v6, "\n"

    if-eqz v5, :cond_3

    .line 173
    sget v5, Lcom/android/settings/R$string;->auto_launch_enable_text:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 175
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_2

    .line 177
    new-instance v8, Landroid/text/style/BulletSpan;

    invoke-direct {v8, v4}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v7, v8, v2, v5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 180
    :cond_2
    filled-new-array {v7, v6}, [Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 182
    :goto_2
    iget-boolean v7, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$3;->val$hasBindAppWidgetPermission:Z

    if-eqz v7, :cond_6

    .line 183
    sget v7, Lcom/android/settings/R$string;->always_allow_bind_appwidgets_text:I

    .line 184
    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 185
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_4

    .line 187
    new-instance v3, Landroid/text/style/BulletSpan;

    invoke-direct {v3, v4}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 188
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 187
    invoke-virtual {v7, v3, v2, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    if-nez v5, :cond_5

    .line 191
    filled-new-array {v7, v6}, [Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3

    :cond_5
    filled-new-array {v5, v6, v7, v6}, [Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_3
    move-object v5, v0

    .line 193
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$3;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    iget-object p0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$3;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-static {p0, v1}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->-$$Nest$fputmHasDefault(Lcom/android/settings/applications/MiuiClearDefaultsPreference;Z)V

    return-void
.end method
