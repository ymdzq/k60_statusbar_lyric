.class public Lcom/android/settings/ai/LongPressAiPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "LongPressAiPreference.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/ai/LongPressAiPreference;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ai/LongPressAiPreference;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/ai/LongPressAiPreference;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/ai/LongPressAiPreference;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/ai/LongPressAiPreference;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 51
    sget v0, Lcom/android/settings/R$id;->img_long_press:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/settings/ai/LongPressAiPreference;->mVideoView:Landroid/widget/VideoView;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/R$raw;->aigesture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/android/settings/ai/LongPressAiPreference;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/ai/LongPressAiPreference;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 55
    iget-object v0, p0, Lcom/android/settings/ai/LongPressAiPreference;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/settings/ai/LongPressAiPreference$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/ai/LongPressAiPreference$1;-><init>(Lcom/android/settings/ai/LongPressAiPreference;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/ai/LongPressAiPreference;->mVideoView:Landroid/widget/VideoView;

    new-instance v0, Lcom/android/settings/ai/LongPressAiPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ai/LongPressAiPreference$2;-><init>(Lcom/android/settings/ai/LongPressAiPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    sget p1, Lcom/android/settings/R$layout;->ai_settings_title_item:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p0, 0x0

    return-object p0
.end method
