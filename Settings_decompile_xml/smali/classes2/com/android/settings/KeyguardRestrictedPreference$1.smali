.class Lcom/android/settings/KeyguardRestrictedPreference$1;
.super Ljava/lang/Object;
.source "KeyguardRestrictedPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KeyguardRestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KeyguardRestrictedPreference;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/KeyguardRestrictedPreference;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/android/settings/KeyguardRestrictedPreference$1;->this$0:Lcom/android/settings/KeyguardRestrictedPreference;

    iput-object p2, p0, Lcom/android/settings/KeyguardRestrictedPreference$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/android/settings/KeyguardRestrictedPreference$1;->val$view:Landroid/view/View;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 86
    iget-object v1, p0, Lcom/android/settings/KeyguardRestrictedPreference$1;->this$0:Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-static {v1}, Lcom/android/settings/KeyguardRestrictedPreference;->-$$Nest$fgetmFontScale(Lcom/android/settings/KeyguardRestrictedPreference;)F

    move-result v1

    iget-object p0, p0, Lcom/android/settings/KeyguardRestrictedPreference$1;->this$0:Lcom/android/settings/KeyguardRestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$dimen;->choose_unlock_item_height:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    float-to-int p0, v1

    .line 87
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 88
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 89
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
