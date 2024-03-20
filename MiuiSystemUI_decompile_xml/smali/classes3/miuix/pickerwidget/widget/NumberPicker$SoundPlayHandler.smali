.class public final Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sPlayerContainer:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    .line 2
    invoke-direct {v0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;-><init>()V

    .line 4
    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p0, p1, Landroid/os/Message;->what:I

    .line 5
    const/4 v0, 0x1

    .line 7
    if-eqz p0, :cond_2

    .line 8
    if-eq p0, v0, :cond_1

    .line 10
    const/4 v0, 0x2

    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    sget-object p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    .line 16
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 18
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mRefs:Landroidx/collection/ArraySet;

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 29
    if-eqz p1, :cond_4

    .line 30
    invoke-virtual {v0}, Landroidx/collection/ArraySet;->isEmpty()Z

    .line 32
    move-result p1

    .line 35
    if-eqz p1, :cond_4

    .line 36
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundPlayer:Landroid/media/SoundPool;

    .line 38
    if-eqz p1, :cond_4

    .line 40
    invoke-virtual {p1}, Landroid/media/SoundPool;->release()V

    .line 42
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundPlayer:Landroid/media/SoundPool;

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    sget-object p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    move-result-wide v0

    .line 57
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundPlayer:Landroid/media/SoundPool;

    .line 58
    if-eqz v2, :cond_4

    .line 60
    iget-wide v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mPrevPlayTime:J

    .line 62
    sub-long v3, v0, v3

    .line 64
    const-wide/16 v5, 0x32

    .line 66
    cmp-long p1, v3, v5

    .line 68
    if-lez p1, :cond_4

    .line 70
    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundId:I

    .line 72
    const/high16 v4, 0x3f800000    # 1.0f

    .line 74
    const/high16 v5, 0x3f800000    # 1.0f

    .line 76
    const/4 v6, 0x0

    .line 78
    const/4 v7, 0x0

    .line 79
    const/high16 v8, 0x3f800000    # 1.0f

    .line 80
    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 82
    iput-wide v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mPrevPlayTime:J

    .line 85
    goto :goto_0

    .line 87
    :cond_2
    sget-object p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    .line 88
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    check-cast v1, Landroid/content/Context;

    .line 92
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 94
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundPlayer:Landroid/media/SoundPool;

    .line 96
    if-nez v2, :cond_3

    .line 98
    new-instance v2, Landroid/media/SoundPool;

    .line 100
    const/4 v3, 0x0

    .line 102
    invoke-direct {v2, v0, v0, v3}, Landroid/media/SoundPool;-><init>(III)V

    .line 103
    iput-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundPlayer:Landroid/media/SoundPool;

    .line 106
    const v3, 0x7f12002e    # @raw/number_picker_value_change 'res/raw/number_picker_value_change.ogg'

    .line 108
    invoke-virtual {v2, v1, v3, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 111
    move-result v0

    .line 114
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundId:I

    .line 115
    :cond_3
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mRefs:Landroidx/collection/ArraySet;

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object p1

    .line 122
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_4
    :goto_0
    return-void
    .line 126
.end method
