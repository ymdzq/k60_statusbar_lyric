.class public Lcom/android/settings/sound/coolsound/RingtonePicker;
.super Ljava/lang/Object;
.source "RingtonePicker.java"


# instance fields
.field private drawableId:I

.field private isDisable:Z

.field private resType:I

.field private ringtoneTitle:Ljava/lang/String;

.field private ringtoneValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/android/settings/sound/coolsound/RingtonePicker;->resType:I

    .line 13
    iput p2, p0, Lcom/android/settings/sound/coolsound/RingtonePicker;->drawableId:I

    .line 14
    iput-object p3, p0, Lcom/android/settings/sound/coolsound/RingtonePicker;->ringtoneTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDrawableId()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/settings/sound/coolsound/RingtonePicker;->drawableId:I

    return p0
.end method

.method public getResType()I
    .locals 0

    .line 18
    iget p0, p0, Lcom/android/settings/sound/coolsound/RingtonePicker;->resType:I

    return p0
.end method

.method public getRingtoneTitle()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/sound/coolsound/RingtonePicker;->ringtoneTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getRingtoneValue()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/sound/coolsound/RingtonePicker;->ringtoneValue:Ljava/lang/String;

    return-object p0
.end method

.method public isDisable()Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/android/settings/sound/coolsound/RingtonePicker;->isDisable:Z

    return p0
.end method

.method public setDisable(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/settings/sound/coolsound/RingtonePicker;->isDisable:Z

    return-void
.end method

.method public setRingtoneValue(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/sound/coolsound/RingtonePicker;->ringtoneValue:Ljava/lang/String;

    return-void
.end method
