.class Lcom/android/settings/colorgameled/LedColorPreference$1$1;
.super Ljava/lang/Object;
.source "LedColorPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/colorgameled/LedColorPreference$1;->onAdjust(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/colorgameled/LedColorPreference$1;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lcom/android/settings/colorgameled/LedColorPreference$1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/android/settings/colorgameled/LedColorPreference$1$1;->this$1:Lcom/android/settings/colorgameled/LedColorPreference$1;

    iput p2, p0, Lcom/android/settings/colorgameled/LedColorPreference$1$1;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorPreference$1$1;->this$1:Lcom/android/settings/colorgameled/LedColorPreference$1;

    iget-object v0, v0, Lcom/android/settings/colorgameled/LedColorPreference$1;->this$0:Lcom/android/settings/colorgameled/LedColorPreference;

    invoke-static {v0}, Lcom/android/settings/colorgameled/LedColorPreference;->-$$Nest$fgetmImageView(Lcom/android/settings/colorgameled/LedColorPreference;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorPreference$1$1;->this$1:Lcom/android/settings/colorgameled/LedColorPreference$1;

    iget-object v0, v0, Lcom/android/settings/colorgameled/LedColorPreference$1;->this$0:Lcom/android/settings/colorgameled/LedColorPreference;

    invoke-static {v0}, Lcom/android/settings/colorgameled/LedColorPreference;->-$$Nest$fgetmImageView(Lcom/android/settings/colorgameled/LedColorPreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/colorgameled/LedColorPreference$1$1;->val$color:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method
