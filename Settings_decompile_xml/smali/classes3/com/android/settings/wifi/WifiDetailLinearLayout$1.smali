.class Lcom/android/settings/wifi/WifiDetailLinearLayout$1;
.super Ljava/lang/Object;
.source "WifiDetailLinearLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiDetailLinearLayout;->getBaseView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDetailLinearLayout;

.field final synthetic val$summaryTv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDetailLinearLayout;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout$1;->this$0:Lcom/android/settings/wifi/WifiDetailLinearLayout;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout$1;->val$summaryTv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout$1;->val$summaryTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout$1;->val$summaryTv:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout$1;->val$summaryTv:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout$1;->val$summaryTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 115
    iget-object p0, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout$1;->val$summaryTv:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    :cond_0
    return-void
.end method
