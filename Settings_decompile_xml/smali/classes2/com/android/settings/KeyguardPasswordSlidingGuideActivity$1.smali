.class Lcom/android/settings/KeyguardPasswordSlidingGuideActivity$1;
.super Ljava/lang/Object;
.source "KeyguardPasswordSlidingGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity$1;->this$0:Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity$1;->this$0:Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
