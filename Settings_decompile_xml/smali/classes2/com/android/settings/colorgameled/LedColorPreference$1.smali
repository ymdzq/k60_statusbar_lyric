.class Lcom/android/settings/colorgameled/LedColorPreference$1;
.super Ljava/lang/Object;
.source "LedColorPreference.java"

# interfaces
.implements Lcom/android/settings/colorgameled/LedColorBitMapView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/colorgameled/LedColorPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/colorgameled/LedColorPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/colorgameled/LedColorPreference;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/settings/colorgameled/LedColorPreference$1;->this$0:Lcom/android/settings/colorgameled/LedColorPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurretnColor()I
    .locals 1

    .line 63
    iget-object p0, p0, Lcom/android/settings/colorgameled/LedColorPreference$1;->this$0:Lcom/android/settings/colorgameled/LedColorPreference;

    invoke-static {p0}, Lcom/android/settings/colorgameled/LedColorPreference;->-$$Nest$fgetmfragment(Lcom/android/settings/colorgameled/LedColorPreference;)Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->getDifferentLights()[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public onAdjust(I)V
    .locals 1

    .line 43
    new-instance v0, Lcom/android/settings/colorgameled/LedColorPreference$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/colorgameled/LedColorPreference$1$1;-><init>(Lcom/android/settings/colorgameled/LedColorPreference$1;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onSave(I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorPreference$1;->this$0:Lcom/android/settings/colorgameled/LedColorPreference;

    invoke-static {v0}, Lcom/android/settings/colorgameled/LedColorPreference;->-$$Nest$fgetmImageView(Lcom/android/settings/colorgameled/LedColorPreference;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorPreference$1;->this$0:Lcom/android/settings/colorgameled/LedColorPreference;

    invoke-static {v0}, Lcom/android/settings/colorgameled/LedColorPreference;->-$$Nest$fgetmImageView(Lcom/android/settings/colorgameled/LedColorPreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/android/settings/colorgameled/LedColorPreference$1;->this$0:Lcom/android/settings/colorgameled/LedColorPreference;

    invoke-static {p0}, Lcom/android/settings/colorgameled/LedColorPreference;->-$$Nest$fgetmfragment(Lcom/android/settings/colorgameled/LedColorPreference;)Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;

    move-result-object p0

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->setLight(II)V

    return-void
.end method
