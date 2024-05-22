.class public final Lcom/android/systemui/statusbar/notification/icon/IconPack;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAreIconsAvailable:Z

.field public final mCenteredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public mIsImportantConversation:Z

.field public mPeopleAvatarDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

.field public mSmallIconDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

.field public final mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/notification/icon/IconPack;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mAreIconsAvailable:Z

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mCenteredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 9
    if-eqz p4, :cond_0

    .line 11
    iget-boolean p1, p4, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mIsImportantConversation:Z

    .line 13
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mIsImportantConversation:Z

    .line 15
    :cond_0
    return-void
    .line 17
.end method
