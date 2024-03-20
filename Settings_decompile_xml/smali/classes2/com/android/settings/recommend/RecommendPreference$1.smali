.class Lcom/android/settings/recommend/RecommendPreference$1;
.super Ljava/lang/Object;
.source "RecommendPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/recommend/RecommendPreference;->addRecommendView(Landroid/text/SpannableString;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/recommend/RecommendPreference;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/recommend/RecommendPreference;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/android/settings/recommend/RecommendPreference$1;->this$0:Lcom/android/settings/recommend/RecommendPreference;

    iput-object p2, p0, Lcom/android/settings/recommend/RecommendPreference$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 119
    iget-object p1, p0, Lcom/android/settings/recommend/RecommendPreference$1;->val$intent:Landroid/content/Intent;

    const-string v0, ":settings:show_fragment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    sget-boolean v0, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/recommend/RecommendPreference$1;->this$0:Lcom/android/settings/recommend/RecommendPreference;

    invoke-static {v0}, Lcom/android/settings/recommend/RecommendPreference;->-$$Nest$fgetmContext(Lcom/android/settings/recommend/RecommendPreference;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiSettings;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/settings/recommend/RecommendPreference$1;->val$intent:Landroid/content/Intent;

    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/recommend/RecommendPreference$1;->val$intent:Landroid/content/Intent;

    const-string v1, ":settings:show_fragment_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/android/settings/recommend/RecommendPreference$1;->this$0:Lcom/android/settings/recommend/RecommendPreference;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/recommend/RecommendPreference;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/android/settings/recommend/RecommendPreference$1;->this$0:Lcom/android/settings/recommend/RecommendPreference;

    invoke-static {p1}, Lcom/android/settings/recommend/RecommendPreference;->-$$Nest$fgetmContext(Lcom/android/settings/recommend/RecommendPreference;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/recommend/RecommendPreference$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
