.class Lcom/android/settings/TetherDialogActivity$IntentSpan;
.super Landroid/text/style/ClickableSpan;
.source "TetherDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntentSpan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherDialogActivity$IntentSpan$OnClickListener;
    }
.end annotation


# instance fields
.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mOnClickListener:Lcom/android/settings/TetherDialogActivity$IntentSpan$OnClickListener;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x1060003    # @android:color/primary_text_light

    .line 67
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/TetherDialogActivity$IntentSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 71
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/settings/TetherDialogActivity$IntentSpan;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/settings/TetherDialogActivity$IntentSpan;->mTitle:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/android/settings/TetherDialogActivity$IntentSpan;->mUrl:Ljava/lang/String;

    .line 75
    iput p4, p0, Lcom/android/settings/TetherDialogActivity$IntentSpan;->mColor:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/android/settings/TetherDialogActivity$IntentSpan;->mOnClickListener:Lcom/android/settings/TetherDialogActivity$IntentSpan$OnClickListener;

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings/TetherDialogActivity$IntentSpan;->mUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/TetherDialogActivity$IntentSpan;->mTitle:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/android/settings/TetherDialogActivity$IntentSpan$OnClickListener;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/android/settings/TetherDialogActivity$IntentSpan$OnClickListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/settings/TetherDialogActivity$IntentSpan;->mOnClickListener:Lcom/android/settings/TetherDialogActivity$IntentSpan$OnClickListener;

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settings/TetherDialogActivity$IntentSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/TetherDialogActivity$IntentSpan;->mColor:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 p0, 0x0

    .line 86
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
