.class public Lcom/android/settings/CardInfo;
.super Ljava/lang/Object;
.source "CardInfo.java"


# instance fields
.field private checkedIconResId:I

.field private iconResId:I

.field private isChecked:Z

.field private isDisable:Z

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private titleResId:I

.field private valueResId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/android/settings/CardInfo;->iconResId:I

    .line 17
    iput p2, p0, Lcom/android/settings/CardInfo;->titleResId:I

    .line 18
    iput p3, p0, Lcom/android/settings/CardInfo;->valueResId:I

    return-void
.end method


# virtual methods
.method public getCheckedIconResId()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/android/settings/CardInfo;->checkedIconResId:I

    return p0
.end method

.method public getIconResId()I
    .locals 0

    .line 22
    iget p0, p0, Lcom/android/settings/CardInfo;->iconResId:I

    return p0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/CardInfo;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getTitleResId()I
    .locals 0

    .line 38
    iget p0, p0, Lcom/android/settings/CardInfo;->titleResId:I

    return p0
.end method

.method public getValueResId()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/settings/CardInfo;->valueResId:I

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/settings/CardInfo;->isChecked:Z

    return p0
.end method

.method public isDisable()Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/settings/CardInfo;->isDisable:Z

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/settings/CardInfo;->isChecked:Z

    return-void
.end method

.method public setCheckedIconResId(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/android/settings/CardInfo;->checkedIconResId:I

    return-void
.end method

.method public setDisable(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/settings/CardInfo;->isDisable:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/CardInfo;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setValueResId(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/android/settings/CardInfo;->valueResId:I

    return-void
.end method
