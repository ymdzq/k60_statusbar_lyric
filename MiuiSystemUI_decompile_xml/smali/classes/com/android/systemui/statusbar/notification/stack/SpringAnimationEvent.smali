.class public final Lcom/android/systemui/statusbar/notification/stack/SpringAnimationEvent;
.super Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final NOTIFICATION_SPRING_TABLE:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;

    .line 2
    const v1, 0x3f333333    # 0.7f

    .line 4
    const v2, 0x3f1c28f6    # 0.61f

    .line 7
    const-wide/16 v3, 0x28a

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;-><init>(FFJ)V

    .line 12
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;

    .line 15
    const v5, 0x3f23d70a    # 0.64f

    .line 17
    invoke-direct {v2, v1, v5, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;-><init>(FFJ)V

    .line 20
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;

    .line 23
    const v4, 0x3f210625    # 0.629f

    .line 25
    const-wide/16 v6, 0x2bc

    .line 28
    invoke-direct {v3, v1, v4, v6, v7}, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;-><init>(FFJ)V

    .line 30
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;

    .line 33
    const v8, 0x3f1ced91    # 0.613f

    .line 35
    const-wide/16 v9, 0x2ee

    .line 38
    invoke-direct {v4, v1, v8, v9, v10}, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;-><init>(FFJ)V

    .line 40
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;

    .line 43
    invoke-direct {v8, v1, v5, v9, v10}, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;-><init>(FFJ)V

    .line 45
    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;

    .line 48
    const v1, 0x3f3851ec    # 0.72f

    .line 50
    const/high16 v11, 0x3f200000    # 0.625f

    .line 53
    const-wide/16 v12, 0x320

    .line 55
    invoke-direct {v5, v1, v11, v12, v13}, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;-><init>(FFJ)V

    .line 57
    new-instance v11, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;

    .line 60
    const v14, 0x3f3d70a4    # 0.74f

    .line 62
    const v15, 0x3f3e353f    # 0.743f

    .line 65
    invoke-direct {v11, v14, v15, v6, v7}, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;-><init>(FFJ)V

    .line 68
    new-instance v7, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;

    .line 71
    const v6, 0x3f451eb8    # 0.77f

    .line 73
    invoke-direct {v7, v6, v1, v9, v10}, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;-><init>(FFJ)V

    .line 76
    new-instance v14, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;

    .line 79
    const v1, 0x3f4ccccd    # 0.8f

    .line 81
    const v6, 0x3f3f3b64    # 0.747f

    .line 84
    invoke-direct {v14, v1, v6, v9, v10}, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;-><init>(FFJ)V

    .line 87
    new-instance v9, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;

    .line 90
    const v1, 0x3f570a3d    # 0.84f

    .line 92
    const v6, 0x3f39999a    # 0.725f

    .line 95
    invoke-direct {v9, v1, v6, v12, v13}, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;-><init>(FFJ)V

    .line 98
    move-object v1, v2

    .line 101
    move-object v2, v3

    .line 102
    move-object v3, v4

    .line 103
    move-object v4, v8

    .line 104
    move-object v6, v11

    .line 105
    move-object v8, v14

    .line 106
    filled-new-array/range {v0 .. v9}, [Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;

    .line 107
    move-result-object v0

    .line 110
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 111
    move-result-object v0

    .line 114
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/SpringAnimationEvent;->NOTIFICATION_SPRING_TABLE:Ljava/util/List;

    .line 115
    return-void
    .line 117
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    const/16 v2, 0x10

    .line 3
    const-wide/16 v3, 0x1c2

    .line 5
    sget-object v5, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimations;->RELEASE_SPRING_FILTER:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 7
    move-object v0, p0

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    .line 10
    return-void
    .line 13
.end method
