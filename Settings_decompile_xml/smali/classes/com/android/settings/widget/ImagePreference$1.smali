.class Lcom/android/settings/widget/ImagePreference$1;
.super Ljava/lang/Object;
.source "ImagePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/ImagePreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ImagePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ImagePreference;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/widget/ImagePreference$1;->this$0:Lcom/android/settings/widget/ImagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/widget/ImagePreference$1;->this$0:Lcom/android/settings/widget/ImagePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getShouldDisableView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object p0, p0, Lcom/android/settings/widget/ImagePreference$1;->this$0:Lcom/android/settings/widget/ImagePreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    :cond_0
    return-void
.end method
