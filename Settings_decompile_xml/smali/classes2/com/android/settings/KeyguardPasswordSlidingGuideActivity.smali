.class public Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;
.super Landroid/app/Activity;
.source "KeyguardPasswordSlidingGuideActivity.java"


# instance fields
.field adapter:Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;

.field private currentPosition:I

.field dot_one:Landroid/view/View;

.field dot_three:Landroid/view/View;

.field dot_two:Landroid/view/View;

.field exit:Landroid/widget/ImageView;

.field exitLayout:Landroid/view/ViewGroup;

.field guideButton:Landroid/widget/Button;

.field private guideButtonVisity:I

.field guideText:Landroid/widget/TextView;

.field private guideTextCenter:Ljava/lang/String;

.field private guideTextLeft:Ljava/lang/String;

.field private guideTextRight:Ljava/lang/String;

.field private guideTitleCenter:Ljava/lang/String;

.field private guideTitleLeft:Ljava/lang/String;

.field private guideTitleRight:Ljava/lang/String;

.field public isPlayed:Z

.field lottieList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/KeyguardPasswordSlidingGuideBean;",
            ">;"
        }
    .end annotation
.end field

.field private mKey:Ljava/lang/String;

.field mlottieRecycler:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;

.field title:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentPosition(Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->currentPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKey(Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentPosition(Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->currentPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msetdot(Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->setdot(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->lottieList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->isPlayed:Z

    .line 37
    iput v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->currentPosition:I

    const/16 v0, 0x8

    .line 38
    iput v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideButtonVisity:I

    return-void
.end method

.method private getDatas()V
    .locals 6

    .line 158
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;

    iget-object v1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTitleLeft:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTextLeft:Ljava/lang/String;

    const-string/jumbo v3, "tablet-left.json"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v1, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;

    iget-object v2, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTitleCenter:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTextCenter:Ljava/lang/String;

    const-string/jumbo v4, "tablet-center.json"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v2, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;

    iget-object v3, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTitleRight:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTextRight:Ljava/lang/String;

    const-string/jumbo v5, "tablet-right.json"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    new-instance v0, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;

    iget-object v1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTitleLeft:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTextLeft:Ljava/lang/String;

    const-string v3, "light_left.json"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v1, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;

    iget-object v2, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTitleCenter:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTextCenter:Ljava/lang/String;

    const-string v4, "light_center.json"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v2, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;

    iget-object v3, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTitleRight:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTextRight:Ljava/lang/String;

    const-string v5, "light_right.json"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_0
    iget-object v3, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->lottieList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->lottieList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->lottieList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getDatasDark()V
    .locals 6

    .line 176
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;

    iget-object v1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTitleLeft:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTextLeft:Ljava/lang/String;

    const-string/jumbo v3, "tablet-left-dark.json"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v1, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;

    iget-object v2, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTitleCenter:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTextCenter:Ljava/lang/String;

    const-string/jumbo v4, "tablet-center-dark.json"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v2, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;

    iget-object v3, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTitleRight:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTextRight:Ljava/lang/String;

    const-string/jumbo v5, "tablet-right-dark.json"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;

    iget-object v1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTitleLeft:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTextLeft:Ljava/lang/String;

    const-string v3, "dark-left.json"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v1, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;

    iget-object v2, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTitleCenter:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTextCenter:Ljava/lang/String;

    const-string v4, "dark-center.json"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v2, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;

    iget-object v3, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTitleRight:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTextRight:Ljava/lang/String;

    const-string v5, "dark-right.json"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    iget-object v3, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->lottieList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->lottieList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->lottieList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeData()V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->lottieList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private setdot(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->dot_one:Landroid/view/View;

    sget v1, Lcom/android/settings/R$drawable;->guide_dot_focused:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 214
    iget-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->dot_two:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 215
    iget-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->dot_three:Landroid/view/View;

    sget v1, Lcom/android/settings/R$drawable;->guide_dot_normal:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 216
    iget-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    iput v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideButtonVisity:I

    goto :goto_0

    .line 205
    :cond_1
    iget-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->dot_one:Landroid/view/View;

    sget v1, Lcom/android/settings/R$drawable;->guide_dot_focused:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 206
    iget-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->dot_two:Landroid/view/View;

    sget v2, Lcom/android/settings/R$drawable;->guide_dot_normal:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 207
    iget-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->dot_three:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 208
    iget p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideButtonVisity:I

    if-nez p1, :cond_3

    .line 209
    iget-object p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->dot_one:Landroid/view/View;

    sget v1, Lcom/android/settings/R$drawable;->guide_dot_normal:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 198
    iget-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->dot_two:Landroid/view/View;

    sget v1, Lcom/android/settings/R$drawable;->guide_dot_focused:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 199
    iget-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->dot_three:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 200
    iget p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideButtonVisity:I

    if-nez p1, :cond_3

    .line 201
    iget-object p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static start(Ljava/lang/String;ILcom/android/settings/KeyguardSettingsPreferenceFragment;)V
    .locals 3

    .line 261
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key"

    .line 262
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "isPlayed"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->isPlayed:Z

    const-string v0, "currentPosition"

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->currentPosition:I

    const-string v0, "guideButtonVisity"

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideButtonVisity:I

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->mKey:Ljava/lang/String;

    .line 74
    sget p1, Lcom/android/settings/R$layout;->activity_keyguard_sliding_guide:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 75
    sget p1, Lcom/android/settings/R$id;->exit:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->exit:Landroid/widget/ImageView;

    .line 76
    sget p1, Lcom/android/settings/R$id;->guide_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->title:Landroid/widget/TextView;

    .line 77
    sget p1, Lcom/android/settings/R$id;->guide_text:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideText:Landroid/widget/TextView;

    .line 78
    sget p1, Lcom/android/settings/R$id;->dot_one:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->dot_one:Landroid/view/View;

    .line 79
    sget p1, Lcom/android/settings/R$id;->dot_two:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->dot_two:Landroid/view/View;

    .line 80
    sget p1, Lcom/android/settings/R$id;->dot_three:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->dot_three:Landroid/view/View;

    .line 81
    sget p1, Lcom/android/settings/R$id;->guide_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideButton:Landroid/widget/Button;

    .line 82
    sget p1, Lcom/android/settings/R$id;->exit_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->exitLayout:Landroid/view/ViewGroup;

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->guide_title_left:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTitleLeft:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->guide_title_center:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTitleCenter:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->guide_title_right:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTitleRight:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->guide_text_left:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTextLeft:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->guide_text_center:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTextCenter:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->guide_text_right:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideTextRight:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->exitLayout:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity$1;-><init>(Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity$2;-><init>(Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->getDatasDark()V

    goto :goto_0

    .line 109
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->getDatas()V

    .line 116
    :goto_0
    sget p1, Lcom/android/settings/R$id;->lottie_recycler:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->mlottieRecycler:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;

    .line 117
    new-instance p1, Lcom/android/settings/ScrollSpeedLinearLayoutManger;

    invoke-direct {p1, p0}, Lcom/android/settings/ScrollSpeedLinearLayoutManger;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->mlottieRecycler:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 120
    new-instance p1, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;

    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->lottieList:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->adapter:Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;

    .line 121
    new-instance p1, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {p1}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->mlottieRecycler:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 123
    iget-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->mlottieRecycler:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;

    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->adapter:Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 124
    iget-boolean p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->isPlayed:Z

    if-eqz p1, :cond_3

    .line 125
    iget p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->currentPosition:I

    invoke-direct {p0, p1}, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->setdot(I)V

    .line 127
    :cond_3
    iget-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->mlottieRecycler:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;

    new-instance v0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity$3;-><init>(Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 247
    invoke-direct {p0}, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->removeData()V

    .line 248
    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->mlottieRecycler:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;

    invoke-virtual {v0}, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->clear()V

    .line 249
    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->mlottieRecycler:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 250
    iput-object v1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->mlottieRecycler:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;

    .line 251
    iput-object v1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->adapter:Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 233
    iget-boolean v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->isPlayed:Z

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->mlottieRecycler:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;

    invoke-virtual {v0}, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->start()V

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->isPlayed:Z

    goto :goto_0

    .line 237
    :cond_0
    iget v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->currentPosition:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideButtonVisity:I

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->mlottieRecycler:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;

    invoke-virtual {v0}, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->start()V

    .line 241
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "isPlayed"

    .line 148
    iget-boolean v1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->isPlayed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "currentPosition"

    .line 149
    iget v1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->currentPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "guideButtonVisity"

    .line 150
    iget p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->guideButtonVisity:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 228
    iget-object p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->exit:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->guide_exit:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
