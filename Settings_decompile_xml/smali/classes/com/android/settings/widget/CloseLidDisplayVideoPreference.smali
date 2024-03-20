.class public Lcom/android/settings/widget/CloseLidDisplayVideoPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "CloseLidDisplayVideoPreference.java"


# instance fields
.field private mVideoResourceId:I

.field private mVideoView:Lcom/android/settings/widget/VideoPlayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public addVideoView(I)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/settings/widget/CloseLidDisplayVideoPreference;->mVideoView:Lcom/android/settings/widget/VideoPlayView;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/VideoPlayView;->addVideoView(I)V

    goto :goto_0

    .line 36
    :cond_0
    iput p1, p0, Lcom/android/settings/widget/CloseLidDisplayVideoPreference;->mVideoResourceId:I

    :goto_0
    return-void
.end method

.method public changeVideoView(I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/settings/widget/CloseLidDisplayVideoPreference;->mVideoView:Lcom/android/settings/widget/VideoPlayView;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/VideoPlayView;->changeVideoView(I)V

    goto :goto_0

    .line 44
    :cond_0
    iput p1, p0, Lcom/android/settings/widget/CloseLidDisplayVideoPreference;->mVideoResourceId:I

    :goto_0
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 51
    sget v0, Lcom/android/settings/R$id;->video_loop_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/VideoPlayView;

    iput-object p1, p0, Lcom/android/settings/widget/CloseLidDisplayVideoPreference;->mVideoView:Lcom/android/settings/widget/VideoPlayView;

    if-eqz p1, :cond_0

    .line 52
    iget p0, p0, Lcom/android/settings/widget/CloseLidDisplayVideoPreference;->mVideoResourceId:I

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/VideoPlayView;->addVideoView(I)V

    :cond_0
    return-void
.end method
