.class Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$2;
.super Ljava/lang/Object;
.source "MiuiMobileDataUsedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$2;->this$0:Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$2;->this$0:Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;

    invoke-static {p1}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->-$$Nest$fgetmProgressBar(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    iget-object p0, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$2;->this$0:Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
