.class public final Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;
.super Landroid/text/style/URLSpan;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;->mClickListener:Landroid/view/View$OnClickListener;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;->mClickListener:Landroid/view/View$OnClickListener;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method
