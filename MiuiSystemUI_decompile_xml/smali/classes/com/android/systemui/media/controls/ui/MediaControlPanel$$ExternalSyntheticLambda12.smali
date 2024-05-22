.class public final synthetic Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/MediaControlPanel;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    iput p2, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$2:I

    iput p3, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$3:I

    iput p4, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$4:I

    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$6:Ljava/lang/String;

    iput p8, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$7:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;Landroid/app/smartspace/SmartspaceAction;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$2:I

    iput p4, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$3:I

    iput p5, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$4:I

    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$6:Ljava/lang/String;

    iput p8, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$7:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    .line 10
    check-cast v1, Landroid/app/smartspace/SmartspaceAction;

    .line 12
    iget v4, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$2:I

    .line 14
    iget v5, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$3:I

    .line 16
    iget v3, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$4:I

    .line 18
    iget-object v7, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$5:Ljava/lang/String;

    .line 20
    iget-object v8, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$6:Ljava/lang/String;

    .line 22
    iget v9, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$7:I

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 29
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->getWallpaperColor(Landroid/graphics/drawable/Icon;)Landroid/app/WallpaperColors;

    .line 33
    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    new-instance v2, Lcom/android/systemui/monet/ColorScheme;

    .line 39
    sget-object v6, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    .line 41
    invoke-direct {v2, v1, v6}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;Lcom/android/systemui/monet/Style;)V

    .line 43
    invoke-virtual {v0, p0, v2, v4, v5}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->addGradientToRecommendationAlbum(Landroid/graphics/drawable/Icon;Lcom/android/systemui/monet/ColorScheme;II)Landroid/graphics/drawable/LayerDrawable;

    .line 46
    move-result-object p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    .line 51
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 54
    :goto_0
    move-object v6, p0

    .line 57
    new-instance p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;

    .line 58
    move-object v1, p0

    .line 60
    move-object v2, v0

    .line 61
    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/media/controls/ui/MediaControlPanel;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 65
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 67
    invoke-virtual {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 69
    return-void

    .line 72
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 73
    iget v1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$2:I

    .line 75
    iget v2, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$3:I

    .line 77
    iget v3, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$4:I

    .line 79
    iget-object v4, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    .line 81
    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v5, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$5:Ljava/lang/String;

    .line 85
    iget-object v6, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$6:Ljava/lang/String;

    .line 87
    iget p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda12;->f$7:I

    .line 89
    iget-object v7, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 91
    iget-object v7, v7, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaCoverItems:Ljava/util/List;

    .line 93
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    move-result-object v7

    .line 98
    check-cast v7, Landroid/widget/ImageView;

    .line 99
    new-instance v8, Landroid/graphics/Matrix;

    .line 101
    invoke-virtual {v7}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 103
    move-result-object v9

    .line 106
    invoke-direct {v8, v9}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 107
    int-to-float v2, v2

    .line 110
    const/high16 v9, 0x3f000000    # 0.5f

    .line 111
    mul-float/2addr v2, v9

    .line 113
    int-to-float v3, v3

    .line 114
    mul-float/2addr v3, v9

    .line 115
    const/high16 v9, 0x3fa00000    # 1.25f

    .line 116
    invoke-virtual {v8, v9, v9, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 118
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 121
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 127
    iget-object v2, v2, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaAppIcons:Ljava/util/List;

    .line 129
    if-eqz v2, :cond_1

    .line 131
    goto :goto_2

    .line 133
    :cond_1
    const/4 v2, 0x0

    .line 134
    :goto_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object v1

    .line 138
    check-cast v1, Landroid/widget/ImageView;

    .line 139
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 141
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 146
    move-result-object v0

    .line 149
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 150
    move-result-object v0

    .line 153
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_3

    .line 157
    :catch_0
    move-exception v0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    const-string v3, "Cannot find icon for package "

    .line 161
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v2

    .line 172
    const-string v3, "MediaControlPanel"

    .line 173
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    const v0, 0x7f081102    # @drawable/ic_music_note 'res/drawable/ic_music_note.xml'

    .line 178
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    :goto_3
    invoke-static {v6, p0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 184
    return-void

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 188
.end method
