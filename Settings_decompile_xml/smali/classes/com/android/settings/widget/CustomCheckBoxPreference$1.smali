.class Lcom/android/settings/widget/CustomCheckBoxPreference$1;
.super Ljava/lang/Object;
.source "CustomCheckBoxPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/CustomCheckBoxPreference;->requestFocusDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/CustomCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/CustomCheckBoxPreference;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/widget/CustomCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 60
    iget-object p0, p0, Lcom/android/settings/widget/CustomCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/CustomCheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/widget/CustomCheckBoxPreference;->mCheckboxView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method
