.class public final Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache$PreloadImageTask;
.super Landroid/os/AsyncTask;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache$PreloadImageTask;->mResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [Landroid/net/Uri;

    .line 2
    const/4 v0, 0x0

    .line 4
    aget-object p1, p1, v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache$PreloadImageTask;->mResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->resolveImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method
