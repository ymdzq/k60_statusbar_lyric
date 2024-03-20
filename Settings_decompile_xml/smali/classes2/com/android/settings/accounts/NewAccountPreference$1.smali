.class Lcom/android/settings/accounts/NewAccountPreference$1;
.super Ljava/lang/Object;
.source "NewAccountPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/NewAccountPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/NewAccountPreference;

.field final synthetic val$end:Landroid/view/View;

.field final synthetic val$img_sync:Landroid/widget/ImageView;

.field final synthetic val$tv_enable:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/NewAccountPreference;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/android/settings/accounts/NewAccountPreference$1;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    iput-object p2, p0, Lcom/android/settings/accounts/NewAccountPreference$1;->val$tv_enable:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/accounts/NewAccountPreference$1;->val$end:Landroid/view/View;

    iput-object p4, p0, Lcom/android/settings/accounts/NewAccountPreference$1;->val$img_sync:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/android/settings/accounts/NewAccountPreference$1;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    invoke-static {v0}, Lcom/android/settings/accounts/NewAccountPreference;->-$$Nest$fgetmIsActive(Lcom/android/settings/accounts/NewAccountPreference;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accounts/NewAccountPreference$1;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    invoke-static {v0}, Lcom/android/settings/accounts/NewAccountPreference;->-$$Nest$fgetmIsPending(Lcom/android/settings/accounts/NewAccountPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 187
    :goto_1
    iget-object v2, p0, Lcom/android/settings/accounts/NewAccountPreference$1;->val$tv_enable:Landroid/widget/TextView;

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v2, p0, Lcom/android/settings/accounts/NewAccountPreference$1;->val$end:Landroid/view/View;

    new-instance v4, Lcom/android/settings/accounts/NewAccountPreference$1$1;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/NewAccountPreference$1$1;-><init>(Lcom/android/settings/accounts/NewAccountPreference$1;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 195
    iget-object v2, p0, Lcom/android/settings/accounts/NewAccountPreference$1;->val$end:Landroid/view/View;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 196
    iget-object v2, p0, Lcom/android/settings/accounts/NewAccountPreference$1;->val$img_sync:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/accounts/NewAccountPreference$1;->val$img_sync:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/settings/accounts/NewAccountPreference$1;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->sync_in_progress:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
