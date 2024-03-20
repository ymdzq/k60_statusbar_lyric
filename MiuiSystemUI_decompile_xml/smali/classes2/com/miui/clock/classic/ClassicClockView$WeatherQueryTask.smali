.class public final Lcom/miui/clock/classic/ClassicClockView$WeatherQueryTask;
.super Landroid/os/AsyncTask;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mHasPresetData:Z

.field public final weakReferenceContext:Ljava/lang/ref/WeakReference;

.field public final weakReferenceView:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/clock/classic/ClassicClockView;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicClockView$WeatherQueryTask;->weakReferenceView:Ljava/lang/ref/WeakReference;

    .line 10
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 12
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p2, p0, Lcom/miui/clock/classic/ClassicClockView$WeatherQueryTask;->weakReferenceContext:Ljava/lang/ref/WeakReference;

    .line 17
    iput-boolean p3, p0, Lcom/miui/clock/classic/ClassicClockView$WeatherQueryTask;->mHasPresetData:Z

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView$WeatherQueryTask;->weakReferenceContext:Ljava/lang/ref/WeakReference;

    .line 4
    iget-boolean p0, p0, Lcom/miui/clock/classic/ClassicClockView$WeatherQueryTask;->mHasPresetData:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const-string p0, "2"

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "1"

    .line 13
    :goto_0
    invoke-static {p0, p1}, Lcom/miui/clock/utils/DataUtils;->getWeatherBean(Ljava/lang/String;Ljava/lang/ref/WeakReference;)Lcom/miui/clock/module/WeatherBean;

    .line 15
    move-result-object p0

    .line 18
    return-object p0
    .line 19
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/miui/clock/module/WeatherBean;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView$WeatherQueryTask;->weakReferenceView:Ljava/lang/ref/WeakReference;

    .line 7
    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Lcom/miui/clock/classic/ClassicClockView;

    .line 15
    if-eqz p0, :cond_2

    .line 17
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mWeatherBean:Lcom/miui/clock/module/WeatherBean;

    .line 19
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 21
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 23
    invoke-static {v0}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isWeatherType(I)Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 31
    invoke-virtual {v0, p1}, Lcom/miui/clock/classic/ClassicTextAreaView;->updateWeather(Lcom/miui/clock/module/WeatherBean;)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 36
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine3:I

    .line 38
    invoke-static {v0}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isWeatherType(I)Z

    .line 40
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 46
    invoke-virtual {v0, p1}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateWeather(Lcom/miui/clock/module/WeatherBean;)V

    .line 48
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 51
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 53
    invoke-virtual {v1}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 55
    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateColor(I)V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 62
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine4:I

    .line 64
    invoke-static {v0}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isWeatherType(I)Z

    .line 66
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 72
    invoke-virtual {v0, p1}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateWeather(Lcom/miui/clock/module/WeatherBean;)V

    .line 74
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 77
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 79
    invoke-virtual {p0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 81
    move-result p0

    .line 84
    invoke-virtual {p1, p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateColor(I)V

    .line 85
    :cond_2
    return-void
    .line 88
.end method
