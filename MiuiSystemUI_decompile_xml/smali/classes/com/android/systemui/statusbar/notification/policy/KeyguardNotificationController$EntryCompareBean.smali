.class public final Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$EntryCompareBean;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final content:Ljava/lang/CharSequence;

.field public final key:Ljava/lang/String;

.field public final subTitle:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$EntryCompareBean;->key:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$EntryCompareBean;->title:Ljava/lang/CharSequence;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$EntryCompareBean;->subTitle:Ljava/lang/CharSequence;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$EntryCompareBean;->content:Ljava/lang/CharSequence;

    .line 11
    return-void
    .line 13
.end method
